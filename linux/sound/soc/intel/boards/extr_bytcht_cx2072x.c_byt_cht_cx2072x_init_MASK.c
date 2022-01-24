#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_2__* codec_dai; int /*<<< orphan*/  dev; struct snd_soc_card* card; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int idle_bias_off; } ;
struct snd_soc_card {TYPE_1__ dapm; } ;
struct TYPE_5__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CX2072X_MCLK_EXTERNAL_PLL ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  byt_cht_cx2072x_acpi_gpios ; 
 int /*<<< orphan*/  byt_cht_cx2072x_headset ; 
 int /*<<< orphan*/  byt_cht_cx2072x_headset_pins ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_card *card = rtd->card;
	struct snd_soc_component *codec = rtd->codec_dai->component;
	int ret;

	if (FUNC3(codec->dev,
					   byt_cht_cx2072x_acpi_gpios))
		FUNC2(rtd->dev, "Unable to add GPIO mapping table\n");

	card->dapm.idle_bias_off = true;

	/* set the default PLL rate, the clock is handled by the codec driver */
	ret = FUNC7(rtd->codec_dai, CX2072X_MCLK_EXTERNAL_PLL,
				     19200000, SND_SOC_CLOCK_IN);
	if (ret) {
		FUNC1(rtd->dev, "Could not set sysclk\n");
		return ret;
	}

	ret = FUNC4(card, "Headset",
				    SND_JACK_HEADSET | SND_JACK_BTN_0,
				    &byt_cht_cx2072x_headset,
				    byt_cht_cx2072x_headset_pins,
				    FUNC0(byt_cht_cx2072x_headset_pins));
	if (ret)
		return ret;

	FUNC5(codec, &byt_cht_cx2072x_headset, NULL);

	FUNC6(rtd->codec_dai, 50);

	return ret;
}