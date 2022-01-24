#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_2__* card; struct snd_soc_dai* codec_dai; TYPE_1__** codec_dais; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  jack; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7219_SYSCLK_MCLK ; 
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
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__ rockchip_sound_jack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,char*,int,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = rtd->codec_dais[0]->component;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	int ret;

	/* We need default MCLK and PLL settings for the accessory detection */
	ret = FUNC5(codec_dai, 0, 12288000,
				     SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC1(codec_dai->dev, "Init can't set codec clock in %d\n", ret);
		return ret;
	}

	ret = FUNC4(codec_dai, 0, DA7219_SYSCLK_MCLK, 0, 0);
	if (ret < 0) {
		FUNC1(codec_dai->dev, "Init can't set pll sysclk mclk %d\n", ret);
		return ret;
	}

	/* Enable Headset and 4 Buttons Jack detection */
	ret = FUNC3(rtd->card, "Headset Jack",
				    SND_JACK_HEADSET | SND_JACK_LINEOUT |
				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
				    SND_JACK_BTN_2 | SND_JACK_BTN_3,
				    &rockchip_sound_jack, NULL, 0);

	if (ret) {
		FUNC1(rtd->card->dev, "New Headset Jack failed! (%d)\n", ret);
		return ret;
	}

	FUNC2(
		rockchip_sound_jack.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC2(
		rockchip_sound_jack.jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
	FUNC2(
		rockchip_sound_jack.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
	FUNC2(
		rockchip_sound_jack.jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);

	FUNC0(component, &rockchip_sound_jack);

	return 0;
}