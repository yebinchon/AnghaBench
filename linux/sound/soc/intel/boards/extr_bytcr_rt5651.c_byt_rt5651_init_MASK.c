#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_7__ {int idle_bias_off; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; TYPE_2__ dapm; } ;
struct TYPE_8__ {int /*<<< orphan*/  jack; } ;
struct byt_rt5651_private {scalar_t__ hp_detect; TYPE_4__ jack; int /*<<< orphan*/  mclk; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_dapm_route const*) ; 
#define  BYT_RT5651_IN1_IN2_MAP 130 
#define  BYT_RT5651_IN1_MAP 129 
#define  BYT_RT5651_IN2_MAP 128 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int BYT_RT5651_MCLK_25MHZ ; 
 int BYT_RT5651_MCLK_EN ; 
 int BYT_RT5651_SSP0_AIF1 ; 
 int BYT_RT5651_SSP0_AIF2 ; 
 int BYT_RT5651_SSP2_AIF2 ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  RT5651_GLB_CLK ; 
 int /*<<< orphan*/  RT5651_SCLK_SRC_MASK ; 
 int /*<<< orphan*/  RT5651_SCLK_SRC_RCCLK ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADSET ; 
 struct snd_soc_dapm_route const* byt_rt5651_controls ; 
 struct snd_soc_dapm_route const* byt_rt5651_intmic_dmic_map ; 
 struct snd_soc_dapm_route const* byt_rt5651_intmic_in1_in2_map ; 
 struct snd_soc_dapm_route const* byt_rt5651_intmic_in1_map ; 
 struct snd_soc_dapm_route const* byt_rt5651_intmic_in2_map ; 
 int byt_rt5651_quirk ; 
 struct snd_soc_dapm_route const* byt_rt5651_ssp0_aif1_map ; 
 struct snd_soc_dapm_route const* byt_rt5651_ssp0_aif2_map ; 
 struct snd_soc_dapm_route const* byt_rt5651_ssp2_aif1_map ; 
 struct snd_soc_dapm_route const* byt_rt5651_ssp2_aif2_map ; 
 struct snd_soc_dapm_route const* bytcr_jack_pins ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_soc_card*,struct snd_soc_dapm_route const*,int) ; 
 struct byt_rt5651_private* FUNC9 (struct snd_soc_card*) ; 
 int FUNC10 (struct snd_soc_card*,char*,int,TYPE_4__*,struct snd_soc_dapm_route const*,int) ; 
 int FUNC11 (struct snd_soc_component*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,struct snd_soc_dapm_route const*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC15(struct snd_soc_pcm_runtime *runtime)
{
	struct snd_soc_card *card = runtime->card;
	struct snd_soc_component *codec = runtime->codec_dai->component;
	struct byt_rt5651_private *priv = FUNC9(card);
	const struct snd_soc_dapm_route *custom_map;
	int num_routes;
	int report;
	int ret;

	card->dapm.idle_bias_off = true;

	/* Start with RC clk for jack-detect (we disable MCLK below) */
	if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN)
		FUNC12(codec, RT5651_GLB_CLK,
			RT5651_SCLK_SRC_MASK, RT5651_SCLK_SRC_RCCLK);

	switch (FUNC2(byt_rt5651_quirk)) {
	case BYT_RT5651_IN1_MAP:
		custom_map = byt_rt5651_intmic_in1_map;
		num_routes = FUNC0(byt_rt5651_intmic_in1_map);
		break;
	case BYT_RT5651_IN2_MAP:
		custom_map = byt_rt5651_intmic_in2_map;
		num_routes = FUNC0(byt_rt5651_intmic_in2_map);
		break;
	case BYT_RT5651_IN1_IN2_MAP:
		custom_map = byt_rt5651_intmic_in1_in2_map;
		num_routes = FUNC0(byt_rt5651_intmic_in1_in2_map);
		break;
	default:
		custom_map = byt_rt5651_intmic_dmic_map;
		num_routes = FUNC0(byt_rt5651_intmic_dmic_map);
	}
	ret = FUNC13(&card->dapm, custom_map, num_routes);
	if (ret)
		return ret;

	if (byt_rt5651_quirk & BYT_RT5651_SSP2_AIF2) {
		ret = FUNC13(&card->dapm,
					byt_rt5651_ssp2_aif2_map,
					FUNC0(byt_rt5651_ssp2_aif2_map));
	} else if (byt_rt5651_quirk & BYT_RT5651_SSP0_AIF1) {
		ret = FUNC13(&card->dapm,
					byt_rt5651_ssp0_aif1_map,
					FUNC0(byt_rt5651_ssp0_aif1_map));
	} else if (byt_rt5651_quirk & BYT_RT5651_SSP0_AIF2) {
		ret = FUNC13(&card->dapm,
					byt_rt5651_ssp0_aif2_map,
					FUNC0(byt_rt5651_ssp0_aif2_map));
	} else {
		ret = FUNC13(&card->dapm,
					byt_rt5651_ssp2_aif1_map,
					FUNC0(byt_rt5651_ssp2_aif1_map));
	}
	if (ret)
		return ret;

	ret = FUNC8(card, byt_rt5651_controls,
					FUNC0(byt_rt5651_controls));
	if (ret) {
		FUNC6(card->dev, "unable to add card controls\n");
		return ret;
	}
	FUNC14(&card->dapm, "Headphone");
	FUNC14(&card->dapm, "Speaker");

	if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN) {
		/*
		 * The firmware might enable the clock at
		 * boot (this information may or may not
		 * be reflected in the enable clock register).
		 * To change the rate we must disable the clock
		 * first to cover these cases. Due to common
		 * clock framework restrictions that do not allow
		 * to disable a clock that has not been enabled,
		 * we need to enable the clock first.
		 */
		ret = FUNC4(priv->mclk);
		if (!ret)
			FUNC3(priv->mclk);

		if (byt_rt5651_quirk & BYT_RT5651_MCLK_25MHZ)
			ret = FUNC5(priv->mclk, 25000000);
		else
			ret = FUNC5(priv->mclk, 19200000);

		if (ret)
			FUNC6(card->dev, "unable to set MCLK rate\n");
	}

	report = 0;
	if (FUNC1(byt_rt5651_quirk))
		report = SND_JACK_HEADSET | SND_JACK_BTN_0;
	else if (priv->hp_detect)
		report = SND_JACK_HEADSET;

	if (report) {
		ret = FUNC10(runtime->card, "Headset",
				    report, &priv->jack, bytcr_jack_pins,
				    FUNC0(bytcr_jack_pins));
		if (ret) {
			FUNC6(runtime->dev, "jack creation failed %d\n", ret);
			return ret;
		}

		if (report & SND_JACK_BTN_0)
			FUNC7(priv->jack.jack, SND_JACK_BTN_0,
					 KEY_PLAYPAUSE);

		ret = FUNC11(codec, &priv->jack,
						 priv->hp_detect);
		if (ret)
			return ret;
	}

	return 0;
}