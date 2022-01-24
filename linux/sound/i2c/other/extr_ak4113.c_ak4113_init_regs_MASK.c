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
struct ak4113 {unsigned char* regmap; } ;

/* Variables and functions */
 unsigned char AK4113_PWN ; 
 size_t AK4113_REG_PWRDN ; 
 unsigned char AK4113_RST ; 
 unsigned char AK4113_WRITABLE_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct ak4113*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ak4113 *chip)
{
	unsigned char old = chip->regmap[AK4113_REG_PWRDN], reg;

	/* bring the chip to reset state and powerdown state */
	FUNC0(chip, AK4113_REG_PWRDN, old & ~(AK4113_RST|AK4113_PWN));
	FUNC1(200);
	/* release reset, but leave powerdown */
	FUNC0(chip, AK4113_REG_PWRDN, (old | AK4113_RST) & ~AK4113_PWN);
	FUNC1(200);
	for (reg = 1; reg < AK4113_WRITABLE_REGS; reg++)
		FUNC0(chip, reg, chip->regmap[reg]);
	/* release powerdown, everything is initialized now */
	FUNC0(chip, AK4113_REG_PWRDN, old | AK4113_RST | AK4113_PWN);
}