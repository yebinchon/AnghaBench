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
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {TYPE_1__* dai_link; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_BTN_4 ; 
 int SND_JACK_BTN_5 ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_MECHANICAL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM8994_SYSCLK_MCLK2 ; 
 int /*<<< orphan*/  littlemill_headset ; 
 int FUNC0 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct snd_soc_pcm_runtime* FUNC2 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_card *card)
{
	struct snd_soc_pcm_runtime *rtd;
	struct snd_soc_component *component;
	struct snd_soc_dai *aif1_dai;
	struct snd_soc_dai *aif2_dai;
	int ret;

	rtd = FUNC2(card, card->dai_link[0].name);
	component = rtd->codec_dai->component;
	aif1_dai = rtd->codec_dai;

	rtd = FUNC2(card, card->dai_link[1].name);
	aif2_dai = rtd->cpu_dai;

	ret = FUNC1(aif1_dai, WM8994_SYSCLK_MCLK2,
				     32768, SND_SOC_CLOCK_IN);
	if (ret < 0)
		return ret;

	ret = FUNC1(aif2_dai, WM8994_SYSCLK_MCLK2,
				     32768, SND_SOC_CLOCK_IN);
	if (ret < 0)
		return ret;

	ret = FUNC0(card, "Headset",
				    SND_JACK_HEADSET | SND_JACK_MECHANICAL |
				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
				    SND_JACK_BTN_2 | SND_JACK_BTN_3 |
				    SND_JACK_BTN_4 | SND_JACK_BTN_5,
				    &littlemill_headset, NULL, 0);
	if (ret)
		return ret;

	/* This will check device compatibility itself */
	FUNC3(component, &littlemill_headset, NULL, NULL, NULL, NULL);

	/* As will this */
	FUNC4(component, &littlemill_headset, 1);

	return 0;
}