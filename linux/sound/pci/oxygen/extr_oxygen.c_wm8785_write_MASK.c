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
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {unsigned int* wm8785_regs; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int OXYGEN_SPI_CEN_LATCH_CLOCK_LO ; 
 int OXYGEN_SPI_CLOCK_160 ; 
 int OXYGEN_SPI_CODEC_SHIFT ; 
 int OXYGEN_SPI_DATA_LENGTH_2 ; 
 int OXYGEN_SPI_TRIGGER ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int,int) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip, u8 reg, unsigned int value)
{
	struct generic_data *data = chip->model_data;

	FUNC1(chip, OXYGEN_SPI_TRIGGER |
			 OXYGEN_SPI_DATA_LENGTH_2 |
			 OXYGEN_SPI_CLOCK_160 |
			 (3 << OXYGEN_SPI_CODEC_SHIFT) |
			 OXYGEN_SPI_CEN_LATCH_CLOCK_LO,
			 (reg << 9) | value);
	if (reg < FUNC0(data->wm8785_regs))
		data->wm8785_regs[reg] = value;
}