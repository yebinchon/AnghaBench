#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct oxygen {int dummy; } ;

/* Variables and functions */
 int OXYGEN_EEPROM_BUSY ; 
 int /*<<< orphan*/  OXYGEN_EEPROM_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_EEPROM_DATA ; 
 unsigned int OXYGEN_EEPROM_DIR_READ ; 
 int /*<<< orphan*/  OXYGEN_EEPROM_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

u16 FUNC4(struct oxygen *chip, unsigned int index)
{
	unsigned int timeout;

	FUNC2(chip, OXYGEN_EEPROM_CONTROL,
		      index | OXYGEN_EEPROM_DIR_READ);
	for (timeout = 0; timeout < 100; ++timeout) {
		FUNC3(1);
		if (!(FUNC1(chip, OXYGEN_EEPROM_STATUS)
		      & OXYGEN_EEPROM_BUSY))
			break;
	}
	return FUNC0(chip, OXYGEN_EEPROM_DATA);
}