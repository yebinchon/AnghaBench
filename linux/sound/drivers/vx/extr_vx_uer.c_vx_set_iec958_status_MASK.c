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
struct vx_core {int chip_status; } ;

/* Variables and functions */
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (struct vx_core*,int,unsigned int) ; 

void FUNC1(struct vx_core *chip, unsigned int bits)
{
	int i;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return;

	for (i = 0; i < 32; i++)
		FUNC0(chip, i, bits & (1 << i));
}