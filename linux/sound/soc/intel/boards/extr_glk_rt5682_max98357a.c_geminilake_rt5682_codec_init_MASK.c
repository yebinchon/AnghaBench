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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; int /*<<< orphan*/  card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct glk_card_private {struct snd_soc_jack geminilake_headset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLK_PLAT_CLK_FREQ ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  KEY_VOICECOMMAND ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int /*<<< orphan*/  RT5682_PLL1_S_MCLK ; 
 int /*<<< orphan*/  RT5682_PLL_FREQ ; 
 int /*<<< orphan*/  RT5682_SCLK_S_PLL1 ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_LINEOUT ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct glk_card_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*,struct snd_soc_jack*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	struct glk_card_private *ctx = FUNC2(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_jack *jack;
	int ret;

	ret = FUNC5(codec_dai, 0, RT5682_PLL1_S_MCLK,
					GLK_PLAT_CLK_FREQ, RT5682_PLL_FREQ);
	if (ret < 0) {
		FUNC0(rtd->dev, "can't set codec pll: %d\n", ret);
		return ret;
	}

	/* Configure sysclk for codec */
	ret = FUNC6(codec_dai, RT5682_SCLK_S_PLL1,
					RT5682_PLL_FREQ, SND_SOC_CLOCK_IN);
	if (ret < 0)
		FUNC0(rtd->dev, "snd_soc_dai_set_sysclk err = %d\n", ret);

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC3(rtd->card, "Headset Jack",
			SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
			SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
			&ctx->geminilake_headset, NULL, 0);
	if (ret) {
		FUNC0(rtd->dev, "Headset Jack creation failed: %d\n", ret);
		return ret;
	}

	jack = &ctx->geminilake_headset;

	FUNC1(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC1(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
	FUNC1(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
	FUNC1(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

	ret = FUNC4(component, jack, NULL);

	if (ret) {
		FUNC0(rtd->dev, "Headset Jack call-back failed: %d\n", ret);
		return ret;
	}

	return ret;
}