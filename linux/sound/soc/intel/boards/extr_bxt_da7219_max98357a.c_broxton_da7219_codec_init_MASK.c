#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_1__* card; int /*<<< orphan*/  dev; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  jack; } ;
struct TYPE_5__ {int /*<<< orphan*/  dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7219_CLKSRC_MCLK ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  KEY_VOICECOMMAND ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_LINEOUT ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 TYPE_2__ broxton_headset ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,char*,int,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_component *component = rtd->codec_dai->component;
	int clk_freq;

	/* Configure sysclk for codec */
	if (FUNC6())
		clk_freq = 24000000;
	else
		clk_freq = 19200000;

	ret = FUNC4(codec_dai, DA7219_CLKSRC_MCLK, clk_freq,
				     SND_SOC_CLOCK_IN);

	if (ret) {
		FUNC1(rtd->dev, "can't set codec sysclk configuration\n");
		return ret;
	}

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC3(rtd->card, "Headset Jack",
			SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
			SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
			&broxton_headset, NULL, 0);
	if (ret) {
		FUNC1(rtd->dev, "Headset Jack creation failed: %d\n", ret);
		return ret;
	}

	FUNC2(broxton_headset.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC2(broxton_headset.jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
	FUNC2(broxton_headset.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
	FUNC2(broxton_headset.jack, SND_JACK_BTN_3,
			 KEY_VOICECOMMAND);

	FUNC0(component, &broxton_headset);

	FUNC5(&rtd->card->dapm, "SoC DMIC");

	return ret;
}