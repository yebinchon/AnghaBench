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
 unsigned char AK4113_WRITABLE_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct ak4113*,unsigned char,unsigned char) ; 

void FUNC1(struct ak4113 *chip, unsigned char reg,
		unsigned char mask, unsigned char val)
{
	if (reg >= AK4113_WRITABLE_REGS)
		return;
	FUNC0(chip, reg, (chip->regmap[reg] & ~mask) | val);
}