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
struct snd_vxpocket {int regCDSP; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDSP ; 
 int VXP_CDSP_CODEC_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct snd_vxpocket* FUNC1 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_vxpocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_vxpocket*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct vx_core *_chip)
{
	struct snd_vxpocket *chip = FUNC1(_chip);

	/* Set the reset CODEC bit to 1. */
	FUNC3(chip, CDSP, chip->regCDSP | VXP_CDSP_CODEC_RESET_MASK);
	FUNC2(chip, CDSP);
	FUNC0(10);
	/* Set the reset CODEC bit to 0. */
	chip->regCDSP &= ~VXP_CDSP_CODEC_RESET_MASK;
	FUNC3(chip, CDSP, chip->regCDSP);
	FUNC2(chip, CDSP);
	FUNC0(1);
}