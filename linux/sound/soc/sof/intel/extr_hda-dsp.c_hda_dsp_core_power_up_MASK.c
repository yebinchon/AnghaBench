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
typedef  unsigned int u32 ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPCS ; 
 int /*<<< orphan*/  HDA_DSP_REG_POLL_INTERVAL_US ; 
 int /*<<< orphan*/  HDA_DSP_RESET_TIMEOUT_US ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC3 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_sof_dev *sdev, unsigned int core_mask)
{
	unsigned int cpa;
	u32 adspcs;
	int ret;

	/* update bits */
	FUNC5(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPCS,
				FUNC1(core_mask),
				FUNC1(core_mask));

	/* poll with timeout to check if operation successful */
	cpa = FUNC0(core_mask);
	ret = FUNC4(sdev, HDA_DSP_BAR,
					    HDA_DSP_REG_ADSPCS, adspcs,
					    (adspcs & cpa) == cpa,
					    HDA_DSP_REG_POLL_INTERVAL_US,
					    HDA_DSP_RESET_TIMEOUT_US);
	if (ret < 0)
		FUNC2(sdev->dev, "error: timeout on core powerup\n");

	/* did core power up ? */
	adspcs = FUNC3(sdev, HDA_DSP_BAR,
				  HDA_DSP_REG_ADSPCS);
	if ((adspcs & FUNC0(core_mask)) !=
		FUNC0(core_mask)) {
		FUNC2(sdev->dev,
			"error: power up core failed core_mask %xadspcs 0x%x\n",
			core_mask, adspcs);
		ret = -EIO;
	}

	return ret;
}