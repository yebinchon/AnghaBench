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
typedef  int /*<<< orphan*/  u16 ;
struct oxygen {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int OXYGEN_EEPROM_BUSY ; 
 int /*<<< orphan*/  OXYGEN_EEPROM_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_EEPROM_DATA ; 
 unsigned int OXYGEN_EEPROM_DIR_WRITE ; 
 int /*<<< orphan*/  OXYGEN_EEPROM_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC5(struct oxygen *chip, unsigned int index, u16 value)
{
	unsigned int timeout;

	FUNC3(chip, OXYGEN_EEPROM_DATA, value);
	FUNC4(chip, OXYGEN_EEPROM_CONTROL,
		      index | OXYGEN_EEPROM_DIR_WRITE);
	for (timeout = 0; timeout < 10; ++timeout) {
		FUNC1(1);
		if (!(FUNC2(chip, OXYGEN_EEPROM_STATUS)
		      & OXYGEN_EEPROM_BUSY))
			return;
	}
	FUNC0(chip->card->dev, "EEPROM write timeout\n");
}