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
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct oxygen {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_AC97_INT_READ_DONE ; 
 int /*<<< orphan*/  OXYGEN_AC97_REGS ; 
 unsigned int OXYGEN_AC97_REG_ADDR_SHIFT ; 
 unsigned int OXYGEN_AC97_REG_CODEC_SHIFT ; 
 unsigned int OXYGEN_AC97_REG_DIR_READ ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC1 (struct oxygen*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

u16 FUNC5(struct oxygen *chip, unsigned int codec,
		     unsigned int index)
{
	unsigned int count;
	unsigned int last_read = UINT_MAX;
	u32 reg;

	reg = index << OXYGEN_AC97_REG_ADDR_SHIFT;
	reg |= OXYGEN_AC97_REG_DIR_READ;
	reg |= codec << OXYGEN_AC97_REG_CODEC_SHIFT;
	for (count = 5; count > 0; --count) {
		FUNC4(5);
		FUNC3(chip, OXYGEN_AC97_REGS, reg);
		FUNC4(10);
		if (FUNC1(chip, OXYGEN_AC97_INT_READ_DONE) >= 0) {
			u16 value = FUNC2(chip, OXYGEN_AC97_REGS);
			/* we require two consecutive reads of the same value */
			if (value == last_read)
				return value;
			last_read = value;
			/*
			 * Invert the register value bits to make sure that two
			 * consecutive unsuccessful reads do not return the same
			 * value.
			 */
			reg ^= 0xffff;
		}
	}
	FUNC0(chip->card->dev, "AC'97 read timeout on codec %u\n", codec);
	return 0;
}