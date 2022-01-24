#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_1__** codec_dais; struct snd_soc_card* card; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int RT5645_AD_STEREO_FILTER ; 
 int /*<<< orphan*/  RT5645_CLK_SEL_I2S1_ASRC ; 
 int RT5645_DA_STEREO_FILTER ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mt8173_rt5650_rt5514_jack ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *runtime)
{
	struct snd_soc_card *card = runtime->card;
	struct snd_soc_component *component = runtime->codec_dais[0]->component;
	int ret;

	FUNC1(component,
				RT5645_DA_STEREO_FILTER |
				RT5645_AD_STEREO_FILTER,
				RT5645_CLK_SEL_I2S1_ASRC);

	/* enable jack detection */
	ret = FUNC3(card, "Headset Jack",
				    SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
				    SND_JACK_BTN_2 | SND_JACK_BTN_3,
				    &mt8173_rt5650_rt5514_jack, NULL, 0);
	if (ret) {
		FUNC0(card->dev, "Can't new Headset Jack %d\n", ret);
		return ret;
	}

	return FUNC2(component,
				      &mt8173_rt5650_rt5514_jack,
				      &mt8173_rt5650_rt5514_jack,
				      &mt8173_rt5650_rt5514_jack);
}