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
typedef  int u32 ;
struct snd_sof_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int HDA_DSP_PD_TIMEOUT ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPCS ; 
 int /*<<< orphan*/  HDA_DSP_REG_POLL_INTERVAL_US ; 
 int USEC_PER_MSEC ; 
 int FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_sof_dev *sdev, unsigned int core_mask)
{
	u32 adspcs;

	/* update bits */
	FUNC2(sdev, HDA_DSP_BAR,
					 HDA_DSP_REG_ADSPCS,
					 FUNC0(core_mask), 0);

	return FUNC1(sdev, HDA_DSP_BAR,
				HDA_DSP_REG_ADSPCS, adspcs,
				!(adspcs & FUNC0(core_mask)),
				HDA_DSP_REG_POLL_INTERVAL_US,
				HDA_DSP_PD_TIMEOUT * USEC_PER_MSEC);
}