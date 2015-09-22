-- 26/12/2011 - Creation of file

-- 02/01/2012 - mabako - proper Vehicle Variants
ALTER TABLE `vehicles` ADD COLUMN `variant1` TINYINT UNSIGNED NOT NULL DEFAULT 255  AFTER `headlights` , ADD COLUMN `variant2` TINYINT UNSIGNED NOT NULL DEFAULT 255  AFTER `variant1` ;

-- 07/01/2012 - mabako - faction note tab
ALTER TABLE `factions` ADD COLUMN `note` TEXT NULL  AFTER `motd` ;

-- 11/01/2012 - mabako - reworked item protection
ALTER TABLE `worlditems` ADD COLUMN `protected` INT NOT NULL DEFAULT 0  AFTER `creator` ;

-- 27/01/2012 - mabako - removed old database fields
ALTER TABLE characters
	DROP COLUMN ammo,
	DROP COLUMN weapons,
	DROP COLUMN fat,
	DROP COLUMN muscles,
	DROP COLUMN masked,
	DROP COLUMN radiochannel;

-- 30/01/2012 - mabako - removed old database fields for interiors
ALTER TABLE interiors
	DROP COLUMN tennant,
	DROP COLUMN items_values,
	DROP COLUMN items,
	DROP COLUMN max_items,
	DROP COLUMN money,
	DROP COLUMN rent,
	DROP COLUMN rentable;


