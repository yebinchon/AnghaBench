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
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*,unsigned int) ; 
 int FUNC4 (struct snd_sof_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sof_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct snd_sof_dev *sdev, unsigned int core_mask)
{
	int ret;

	/* leave reset state */
	ret = FUNC4(sdev, core_mask);
	if (ret < 0)
		return ret;

	/* run core */
	FUNC1(sdev->dev, "unstall/run core: core_mask = %x\n", core_mask);
	FUNC6(sdev, HDA_DSP_BAR,
					 HDA_DSP_REG_ADSPCS,
					 FUNC0(core_mask),
					 0);

	/* is core now running ? */
	if (!FUNC3(sdev, core_mask)) {
		FUNC5(sdev, core_mask);
		FUNC2(sdev->dev, "error: DSP start core failed: core_mask %x\n",
			core_mask);
		ret = -EIO;
	}

	return ret;
}