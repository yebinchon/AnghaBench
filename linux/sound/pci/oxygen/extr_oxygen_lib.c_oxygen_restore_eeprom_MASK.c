#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_device_id {int subdevice; int subvendor; } ;
struct oxygen {TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int OXYGEN_EEPROM_ID ; 
 int /*<<< orphan*/  OXYGEN_MISC ; 
 int /*<<< orphan*/  OXYGEN_MISC_WRITE_PCI_SUBID ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_ID ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct oxygen *chip,
				  const struct pci_device_id *id)
{
	u16 eeprom_id;

	eeprom_id = FUNC2(chip, 0);
	if (eeprom_id != OXYGEN_EEPROM_ID &&
	    (eeprom_id != 0xffff || id->subdevice != 0x8788)) {
		/*
		 * This function gets called only when a known card model has
		 * been detected, i.e., we know there is a valid subsystem
		 * product ID at index 2 in the EEPROM.  Therefore, we have
		 * been able to deduce the correct subsystem vendor ID, and
		 * this is enough information to restore the original EEPROM
		 * contents.
		 */
		FUNC4(chip, 1, id->subvendor);
		FUNC4(chip, 0, OXYGEN_EEPROM_ID);

		FUNC3(chip, OXYGEN_MISC,
				 OXYGEN_MISC_WRITE_PCI_SUBID);
		FUNC5(chip->pci, PCI_SUBSYSTEM_VENDOR_ID,
				      id->subvendor);
		FUNC5(chip->pci, PCI_SUBSYSTEM_ID,
				      id->subdevice);
		FUNC1(chip, OXYGEN_MISC,
				   OXYGEN_MISC_WRITE_PCI_SUBID);

		FUNC0(chip->card->dev, "EEPROM ID restored\n");
	}
}