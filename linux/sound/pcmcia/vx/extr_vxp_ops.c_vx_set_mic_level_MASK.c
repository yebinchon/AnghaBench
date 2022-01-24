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
struct vx_core {int chip_status; int /*<<< orphan*/  lock; } ;
struct snd_vxpocket {int regCDSP; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICRO ; 
 int VXP_CDSP_MIC_SEL_MASK ; 
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_vxpocket* FUNC2 (struct vx_core*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct vx_core *chip, int level)
{
	struct snd_vxpocket *pchip = FUNC2(chip);

	if (chip->chip_status & VX_STAT_IS_STALE)
		return;

	FUNC0(&chip->lock);
	if (pchip->regCDSP & VXP_CDSP_MIC_SEL_MASK) {
		level = FUNC3(level);
		FUNC4(chip, MICRO, level);
	}
	FUNC1(&chip->lock);
}