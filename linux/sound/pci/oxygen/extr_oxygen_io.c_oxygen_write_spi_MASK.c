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
typedef  int u8 ;
struct oxygen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_SPI_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_SPI_DATA1 ; 
 int /*<<< orphan*/  OXYGEN_SPI_DATA2 ; 
 int /*<<< orphan*/  OXYGEN_SPI_DATA3 ; 
 int OXYGEN_SPI_DATA_LENGTH_3 ; 
 int FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct oxygen *chip, u8 control, unsigned int data)
{
	/*
	 * We need to wait AFTER initiating the SPI transaction,
	 * otherwise read operations will not work.
	 */
	FUNC1(chip, OXYGEN_SPI_DATA1, data);
	FUNC1(chip, OXYGEN_SPI_DATA2, data >> 8);
	if (control & OXYGEN_SPI_DATA_LENGTH_3)
		FUNC1(chip, OXYGEN_SPI_DATA3, data >> 16);
	FUNC1(chip, OXYGEN_SPI_CONTROL, control);
	return FUNC0(chip);
}