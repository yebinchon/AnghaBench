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
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  HIFREQ ; 
 int /*<<< orphan*/  RUER ; 
 int /*<<< orphan*/  VX_DATA_CODEC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vx_core *chip, unsigned int data)
{
	unsigned int i;

	FUNC0(chip, HIFREQ);

	/* We have to send 24 bits (3 x 8 bits). Start with most signif. Bit */
	for (i = 0; i < 24; i++, data <<= 1)
		FUNC1(chip, DATA, ((data & 0x800000) ? VX_DATA_CODEC_MASK : 0));
	/* Terminate access to codec registers */
	FUNC0(chip, RUER);
}