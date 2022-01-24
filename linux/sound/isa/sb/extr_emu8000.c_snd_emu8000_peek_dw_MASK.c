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
struct snd_emu8000 {unsigned int last_reg; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC5(struct snd_emu8000 *emu, unsigned int port, unsigned int reg)
{
	unsigned short low;
	unsigned int res;
	unsigned long flags;
	FUNC3(&emu->reg_lock, flags);
	if (reg != emu->last_reg) {
		FUNC2((unsigned short)reg, FUNC0(emu)); /* Set register */
		emu->last_reg = reg;
	}
	low = FUNC1(port);	/* Read low word of data */
	res = low + (FUNC1(port+2) << 16);
	FUNC4(&emu->reg_lock, flags);
	return res;
}