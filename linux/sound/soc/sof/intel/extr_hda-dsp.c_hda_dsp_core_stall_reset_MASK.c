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
struct snd_sof_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPCS ; 
 int FUNC1 (struct snd_sof_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_sof_dev *sdev, unsigned int core_mask)
{
	/* stall core */
	FUNC2(sdev, HDA_DSP_BAR,
					 HDA_DSP_REG_ADSPCS,
					 FUNC0(core_mask),
					 FUNC0(core_mask));

	/* set reset state */
	return FUNC1(sdev, core_mask);
}