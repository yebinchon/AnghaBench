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
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPCS ; 
 int /*<<< orphan*/  HDA_DSP_REG_POLL_INTERVAL_US ; 
 int /*<<< orphan*/  HDA_DSP_RESET_TIMEOUT_US ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_sof_dev *sdev, unsigned int core_mask)
{
	unsigned int crst;
	u32 adspcs;
	int ret;

	/* clear reset bits for cores */
	FUNC4(sdev, HDA_DSP_BAR,
					 HDA_DSP_REG_ADSPCS,
					 FUNC0(core_mask),
					 0);

	/* poll with timeout to check if operation successful */
	crst = FUNC0(core_mask);
	ret = FUNC3(sdev, HDA_DSP_BAR,
					    HDA_DSP_REG_ADSPCS, adspcs,
					    !(adspcs & crst),
					    HDA_DSP_REG_POLL_INTERVAL_US,
					    HDA_DSP_RESET_TIMEOUT_US);

	/* has core left reset ? */
	adspcs = FUNC2(sdev, HDA_DSP_BAR,
				  HDA_DSP_REG_ADSPCS);
	if ((adspcs & FUNC0(core_mask)) != 0) {
		FUNC1(sdev->dev,
			"error: reset leave failed: core_mask %x adspcs 0x%x\n",
			core_mask, adspcs);
		ret = -EIO;
	}

	return ret;
}