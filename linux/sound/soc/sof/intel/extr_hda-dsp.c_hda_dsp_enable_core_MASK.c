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
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC1 (struct snd_sof_dev*,unsigned int) ; 
 int FUNC2 (struct snd_sof_dev*,unsigned int) ; 
 int FUNC3 (struct snd_sof_dev*,unsigned int) ; 

int FUNC4(struct snd_sof_dev *sdev, unsigned int core_mask)
{
	int ret;

	/* return if core is already enabled */
	if (FUNC1(sdev, core_mask))
		return 0;

	/* power up */
	ret = FUNC2(sdev, core_mask);
	if (ret < 0) {
		FUNC0(sdev->dev, "error: dsp core power up failed: core_mask %x\n",
			core_mask);
		return ret;
	}

	return FUNC3(sdev, core_mask);
}