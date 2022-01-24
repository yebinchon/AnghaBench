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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_iface {int fmt; int /*<<< orphan*/  lrclk; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_DSP_A 132 
#define  SND_SOC_DAIFMT_DSP_B 131 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 struct axg_tdm_iface* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *dai,
				   struct snd_pcm_hw_params *params)
{
	struct axg_tdm_iface *iface = FUNC6(dai);
	unsigned int ratio_num;
	int ret;

	ret = FUNC3(iface->lrclk, FUNC5(params));
	if (ret) {
		FUNC4(dai->dev, "setting sample clock failed: %d\n", ret);
		return ret;
	}

	switch (iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
	case SND_SOC_DAIFMT_LEFT_J:
	case SND_SOC_DAIFMT_RIGHT_J:
		/* 50% duty cycle ratio */
		ratio_num = 1;
		break;

	case SND_SOC_DAIFMT_DSP_A:
	case SND_SOC_DAIFMT_DSP_B:
		/*
		 * A zero duty cycle ratio will result in setting the mininum
		 * ratio possible which, for this clock, is 1 cycle of the
		 * parent bclk clock high and the rest low, This is exactly
		 * what we want here.
		 */
		ratio_num = 0;
		break;

	default:
		return -EINVAL;
	}

	ret = FUNC1(iface->lrclk, ratio_num, 2);
	if (ret) {
		FUNC4(dai->dev,
			"setting sample clock duty cycle failed: %d\n", ret);
		return ret;
	}

	/* Set sample clock inversion */
	ret = FUNC2(iface->lrclk,
			    FUNC0(iface->fmt) ? 180 : 0);
	if (ret) {
		FUNC4(dai->dev,
			"setting sample clock phase failed: %d\n", ret);
		return ret;
	}

	return 0;
}