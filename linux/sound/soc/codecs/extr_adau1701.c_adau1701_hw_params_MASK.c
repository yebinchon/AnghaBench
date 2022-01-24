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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau1701 {int sysclk; unsigned int pll_clkdiv; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1701_DSPCTRL ; 
 unsigned int ADAU1701_DSPCTRL_SR_192 ; 
 unsigned int ADAU1701_DSPCTRL_SR_48 ; 
 unsigned int ADAU1701_DSPCTRL_SR_96 ; 
 int /*<<< orphan*/  ADAU1701_DSPCTRL_SR_MASK ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct snd_soc_component*,unsigned int,int) ; 
 int FUNC1 (struct snd_soc_component*,struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_component*,struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct adau1701* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct adau1701 *adau1701 = FUNC5(component);
	unsigned int clkdiv = adau1701->sysclk / FUNC3(params);
	unsigned int val;
	int ret;

	/*
	 * If the mclk/lrclk ratio changes, the chip needs updated PLL
	 * mode GPIO settings, and a full reset cycle, including a new
	 * firmware upload.
	 */
	if (clkdiv != adau1701->pll_clkdiv) {
		ret = FUNC0(component, clkdiv, FUNC3(params));
		if (ret < 0)
			return ret;
	}

	switch (FUNC3(params)) {
	case 192000:
		val = ADAU1701_DSPCTRL_SR_192;
		break;
	case 96000:
		val = ADAU1701_DSPCTRL_SR_96;
		break;
	case 48000:
		val = ADAU1701_DSPCTRL_SR_48;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(adau1701->regmap, ADAU1701_DSPCTRL,
		ADAU1701_DSPCTRL_SR_MASK, val);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		return FUNC2(component, params);
	else
		return FUNC1(component, params);
}