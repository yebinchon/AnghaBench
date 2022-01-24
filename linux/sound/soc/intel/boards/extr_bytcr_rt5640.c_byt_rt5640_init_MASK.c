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
struct snd_soc_pcm_runtime {TYPE_1__* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_7__ {int idle_bias_off; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; TYPE_2__ dapm; } ;
struct TYPE_8__ {int /*<<< orphan*/  jack; } ;
struct byt_rt5640_private {TYPE_4__ jack; int /*<<< orphan*/  mclk; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_dapm_route const*) ; 
#define  BYT_RT5640_DMIC2_MAP 130 
#define  BYT_RT5640_IN1_MAP 129 
#define  BYT_RT5640_IN3_MAP 128 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int BYT_RT5640_MCLK_25MHZ ; 
 int BYT_RT5640_MCLK_EN ; 
 int BYT_RT5640_MONO_SPEAKER ; 
 int BYT_RT5640_SSP0_AIF1 ; 
 int BYT_RT5640_SSP0_AIF2 ; 
 int BYT_RT5640_SSP2_AIF2 ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int RT5640_AD_MONO_L_FILTER ; 
 int RT5640_AD_MONO_R_FILTER ; 
 int RT5640_AD_STEREO_FILTER ; 
 int /*<<< orphan*/  RT5640_CLK_SEL_ASRC ; 
 int RT5640_DA_MONO_L_FILTER ; 
 int RT5640_DA_MONO_R_FILTER ; 
 int RT5640_DA_STEREO_FILTER ; 
 int /*<<< orphan*/  RT5640_GLB_CLK ; 
 int /*<<< orphan*/  RT5640_SCLK_SRC_MASK ; 
 int /*<<< orphan*/  RT5640_SCLK_SRC_RCCLK ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADSET ; 
 struct snd_soc_dapm_route const* byt_rt5640_controls ; 
 struct snd_soc_dapm_route const* byt_rt5640_intmic_dmic1_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_intmic_dmic2_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_intmic_in1_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_intmic_in3_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_mono_spk_map ; 
 int byt_rt5640_quirk ; 
 struct snd_soc_dapm_route const* byt_rt5640_ssp0_aif1_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_ssp0_aif2_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_ssp2_aif1_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_ssp2_aif2_map ; 
 struct snd_soc_dapm_route const* byt_rt5640_stereo_spk_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dapm_route const* rt5640_pins ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snd_soc_card*,struct snd_soc_dapm_route const*,int) ; 
 struct byt_rt5640_private* FUNC10 (struct snd_soc_card*) ; 
 int FUNC11 (struct snd_soc_card*,char*,int,TYPE_4__*,struct snd_soc_dapm_route const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_component*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,struct snd_soc_dapm_route const*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC16(struct snd_soc_pcm_runtime *runtime)
{
	struct snd_soc_card *card = runtime->card;
	struct byt_rt5640_private *priv = FUNC10(card);
	struct snd_soc_component *component = runtime->codec_dai->component;
	const struct snd_soc_dapm_route *custom_map;
	int num_routes;
	int ret;

	card->dapm.idle_bias_off = true;

	/* Start with RC clk for jack-detect (we disable MCLK below) */
	if (byt_rt5640_quirk & BYT_RT5640_MCLK_EN)
		FUNC13(component, RT5640_GLB_CLK,
			RT5640_SCLK_SRC_MASK, RT5640_SCLK_SRC_RCCLK);

	FUNC7(component,
				RT5640_DA_STEREO_FILTER |
				RT5640_DA_MONO_L_FILTER	|
				RT5640_DA_MONO_R_FILTER	|
				RT5640_AD_STEREO_FILTER	|
				RT5640_AD_MONO_L_FILTER	|
				RT5640_AD_MONO_R_FILTER,
				RT5640_CLK_SEL_ASRC);

	ret = FUNC9(card, byt_rt5640_controls,
					FUNC0(byt_rt5640_controls));
	if (ret) {
		FUNC6(card->dev, "unable to add card controls\n");
		return ret;
	}

	switch (FUNC2(byt_rt5640_quirk)) {
	case BYT_RT5640_IN1_MAP:
		custom_map = byt_rt5640_intmic_in1_map;
		num_routes = FUNC0(byt_rt5640_intmic_in1_map);
		break;
	case BYT_RT5640_IN3_MAP:
		custom_map = byt_rt5640_intmic_in3_map;
		num_routes = FUNC0(byt_rt5640_intmic_in3_map);
		break;
	case BYT_RT5640_DMIC2_MAP:
		custom_map = byt_rt5640_intmic_dmic2_map;
		num_routes = FUNC0(byt_rt5640_intmic_dmic2_map);
		break;
	default:
		custom_map = byt_rt5640_intmic_dmic1_map;
		num_routes = FUNC0(byt_rt5640_intmic_dmic1_map);
	}

	ret = FUNC14(&card->dapm, custom_map, num_routes);
	if (ret)
		return ret;

	if (byt_rt5640_quirk & BYT_RT5640_SSP2_AIF2) {
		ret = FUNC14(&card->dapm,
					byt_rt5640_ssp2_aif2_map,
					FUNC0(byt_rt5640_ssp2_aif2_map));
	} else if (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF1) {
		ret = FUNC14(&card->dapm,
					byt_rt5640_ssp0_aif1_map,
					FUNC0(byt_rt5640_ssp0_aif1_map));
	} else if (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF2) {
		ret = FUNC14(&card->dapm,
					byt_rt5640_ssp0_aif2_map,
					FUNC0(byt_rt5640_ssp0_aif2_map));
	} else {
		ret = FUNC14(&card->dapm,
					byt_rt5640_ssp2_aif1_map,
					FUNC0(byt_rt5640_ssp2_aif1_map));
	}
	if (ret)
		return ret;

	if (byt_rt5640_quirk & BYT_RT5640_MONO_SPEAKER) {
		ret = FUNC14(&card->dapm,
					byt_rt5640_mono_spk_map,
					FUNC0(byt_rt5640_mono_spk_map));
	} else {
		ret = FUNC14(&card->dapm,
					byt_rt5640_stereo_spk_map,
					FUNC0(byt_rt5640_stereo_spk_map));
	}
	if (ret)
		return ret;

	FUNC15(&card->dapm, "Headphone");
	FUNC15(&card->dapm, "Speaker");

	if (byt_rt5640_quirk & BYT_RT5640_MCLK_EN) {
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

		if (byt_rt5640_quirk & BYT_RT5640_MCLK_25MHZ)
			ret = FUNC5(priv->mclk, 25000000);
		else
			ret = FUNC5(priv->mclk, 19200000);

		if (ret) {
			FUNC6(card->dev, "unable to set MCLK rate\n");
			return ret;
		}
	}

	if (FUNC1(byt_rt5640_quirk)) {
		ret = FUNC11(card, "Headset",
					    SND_JACK_HEADSET | SND_JACK_BTN_0,
					    &priv->jack, rt5640_pins,
					    FUNC0(rt5640_pins));
		if (ret) {
			FUNC6(card->dev, "Jack creation failed %d\n", ret);
			return ret;
		}
		FUNC8(priv->jack.jack, SND_JACK_BTN_0,
				 KEY_PLAYPAUSE);
		FUNC12(component, &priv->jack, NULL);
	}

	return 0;
}