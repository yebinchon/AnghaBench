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
struct snd_vxpocket {int regDIALOG; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIALOG ; 
 int /*<<< orphan*/  ICR ; 
 int VXP_DLG_DMA16_SEL_MASK ; 
 int VXP_DLG_DMAREAD_SEL_MASK ; 
 int VXP_DLG_DMAWRITE_SEL_MASK ; 
 struct snd_vxpocket* FUNC0 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_vxpocket*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct vx_core *_chip)
{
	struct snd_vxpocket *chip = FUNC0(_chip);

	/* Disable DMA and 16-bit accesses */
	chip->regDIALOG &= ~(VXP_DLG_DMAWRITE_SEL_MASK|
			     VXP_DLG_DMAREAD_SEL_MASK|
			     VXP_DLG_DMA16_SEL_MASK);
	FUNC1(chip, DIALOG, chip->regDIALOG);
	/* HREQ pin disabled. */
	FUNC1(chip, ICR, 0);
}