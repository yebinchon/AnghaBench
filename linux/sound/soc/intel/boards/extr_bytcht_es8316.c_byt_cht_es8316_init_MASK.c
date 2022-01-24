#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_2__* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_5__ {int idle_bias_off; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; TYPE_1__ dapm; } ;
struct TYPE_7__ {int /*<<< orphan*/  jack; } ;
struct byt_cht_es8316_private {TYPE_3__ jack; int /*<<< orphan*/  mclk; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_dapm_route*) ; 
#define  BYT_CHT_ES8316_INTMIC_IN1_MAP 129 
#define  BYT_CHT_ES8316_INTMIC_IN2_MAP 128 
 int FUNC1 (int) ; 
 int BYT_CHT_ES8316_SSP0 ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 struct snd_soc_dapm_route* byt_cht_es8316_intmic_in1_map ; 
 struct snd_soc_dapm_route* byt_cht_es8316_intmic_in2_map ; 
 struct snd_soc_dapm_route* byt_cht_es8316_jack_pins ; 
 struct snd_soc_dapm_route* byt_cht_es8316_ssp0_map ; 
 struct snd_soc_dapm_route* byt_cht_es8316_ssp2_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int quirk ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct byt_cht_es8316_private* FUNC7 (struct snd_soc_card*) ; 
 int FUNC8 (struct snd_soc_card*,char*,int,TYPE_3__*,struct snd_soc_dapm_route*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,struct snd_soc_dapm_route const*,int) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_pcm_runtime *runtime)
{
	struct snd_soc_component *codec = runtime->codec_dai->component;
	struct snd_soc_card *card = runtime->card;
	struct byt_cht_es8316_private *priv = FUNC7(card);
	const struct snd_soc_dapm_route *custom_map;
	int num_routes;
	int ret;

	card->dapm.idle_bias_off = true;

	switch (FUNC1(quirk)) {
	case BYT_CHT_ES8316_INTMIC_IN1_MAP:
	default:
		custom_map = byt_cht_es8316_intmic_in1_map;
		num_routes = FUNC0(byt_cht_es8316_intmic_in1_map);
		break;
	case BYT_CHT_ES8316_INTMIC_IN2_MAP:
		custom_map = byt_cht_es8316_intmic_in2_map;
		num_routes = FUNC0(byt_cht_es8316_intmic_in2_map);
		break;
	}
	ret = FUNC11(&card->dapm, custom_map, num_routes);
	if (ret)
		return ret;

	if (quirk & BYT_CHT_ES8316_SSP0) {
		custom_map = byt_cht_es8316_ssp0_map;
		num_routes = FUNC0(byt_cht_es8316_ssp0_map);
	} else {
		custom_map = byt_cht_es8316_ssp2_map;
		num_routes = FUNC0(byt_cht_es8316_ssp2_map);
	}
	ret = FUNC11(&card->dapm, custom_map, num_routes);
	if (ret)
		return ret;

	/*
	 * The firmware might enable the clock at boot (this information
	 * may or may not be reflected in the enable clock register).
	 * To change the rate we must disable the clock first to cover these
	 * cases. Due to common clock framework restrictions that do not allow
	 * to disable a clock that has not been enabled, we need to enable
	 * the clock first.
	 */
	ret = FUNC3(priv->mclk);
	if (!ret)
		FUNC2(priv->mclk);

	ret = FUNC4(priv->mclk, 19200000);
	if (ret)
		FUNC5(card->dev, "unable to set MCLK rate\n");

	ret = FUNC3(priv->mclk);
	if (ret)
		FUNC5(card->dev, "unable to enable MCLK\n");

	ret = FUNC10(runtime->codec_dai, 0, 19200000,
				     SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC5(card->dev, "can't set codec clock %d\n", ret);
		return ret;
	}

	ret = FUNC8(card, "Headset",
				    SND_JACK_HEADSET | SND_JACK_BTN_0,
				    &priv->jack, byt_cht_es8316_jack_pins,
				    FUNC0(byt_cht_es8316_jack_pins));
	if (ret) {
		FUNC5(card->dev, "jack creation failed %d\n", ret);
		return ret;
	}

	FUNC6(priv->jack.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC9(codec, &priv->jack, NULL);

	return 0;
}