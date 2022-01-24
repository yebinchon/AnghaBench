#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm; } ;
struct cht_mc_private {int /*<<< orphan*/  mclk; int /*<<< orphan*/  jack; TYPE_2__* acpi_card; } ;
struct TYPE_4__ {scalar_t__ codec_type; } ;
struct TYPE_3__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHT_PLAT_CLK_3_HZ ; 
 int CHT_RT5645_SSP0_AIF1 ; 
 int CHT_RT5645_SSP0_AIF2 ; 
 int CHT_RT5645_SSP2_AIF2 ; 
 scalar_t__ CODEC_TYPE_RT5650 ; 
 int RT5645_AD_STEREO_FILTER ; 
 int /*<<< orphan*/  RT5645_CLK_SEL_I2S1_ASRC ; 
 int /*<<< orphan*/  RT5645_CLK_SEL_I2S2_ASRC ; 
 int RT5645_DA_MONO_L_FILTER ; 
 int RT5645_DA_MONO_R_FILTER ; 
 int RT5645_DA_STEREO_FILTER ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  cht_bsw_jack_pins ; 
 int cht_rt5645_quirk ; 
 int /*<<< orphan*/  cht_rt5645_ssp0_aif1_map ; 
 int /*<<< orphan*/  cht_rt5645_ssp0_aif2_map ; 
 int /*<<< orphan*/  cht_rt5645_ssp2_aif1_map ; 
 int /*<<< orphan*/  cht_rt5645_ssp2_aif2_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cht_mc_private* FUNC7 (struct snd_soc_card*) ; 
 int FUNC8 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_pcm_runtime *runtime)
{
	struct snd_soc_card *card = runtime->card;
	struct cht_mc_private *ctx = FUNC7(runtime->card);
	struct snd_soc_component *component = runtime->codec_dai->component;
	int jack_type;
	int ret;

	if ((cht_rt5645_quirk & CHT_RT5645_SSP2_AIF2) ||
	    (cht_rt5645_quirk & CHT_RT5645_SSP0_AIF2)) {
		/* Select clk_i2s2_asrc as ASRC clock source */
		FUNC5(component,
					RT5645_DA_STEREO_FILTER |
					RT5645_DA_MONO_L_FILTER |
					RT5645_DA_MONO_R_FILTER |
					RT5645_AD_STEREO_FILTER,
					RT5645_CLK_SEL_I2S2_ASRC);
	} else {
		/* Select clk_i2s1_asrc as ASRC clock source */
		FUNC5(component,
					RT5645_DA_STEREO_FILTER |
					RT5645_DA_MONO_L_FILTER |
					RT5645_DA_MONO_R_FILTER |
					RT5645_AD_STEREO_FILTER,
					RT5645_CLK_SEL_I2S1_ASRC);
	}

	if (cht_rt5645_quirk & CHT_RT5645_SSP2_AIF2) {
		ret = FUNC9(&card->dapm,
					cht_rt5645_ssp2_aif2_map,
					FUNC0(cht_rt5645_ssp2_aif2_map));
	} else if (cht_rt5645_quirk & CHT_RT5645_SSP0_AIF1) {
		ret = FUNC9(&card->dapm,
					cht_rt5645_ssp0_aif1_map,
					FUNC0(cht_rt5645_ssp0_aif1_map));
	} else if (cht_rt5645_quirk & CHT_RT5645_SSP0_AIF2) {
		ret = FUNC9(&card->dapm,
					cht_rt5645_ssp0_aif2_map,
					FUNC0(cht_rt5645_ssp0_aif2_map));
	} else {
		ret = FUNC9(&card->dapm,
					cht_rt5645_ssp2_aif1_map,
					FUNC0(cht_rt5645_ssp2_aif1_map));
	}
	if (ret)
		return ret;

	if (ctx->acpi_card->codec_type == CODEC_TYPE_RT5650)
		jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
					SND_JACK_BTN_0 | SND_JACK_BTN_1 |
					SND_JACK_BTN_2 | SND_JACK_BTN_3;
	else
		jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE;

	ret = FUNC8(runtime->card, "Headset",
				    jack_type, &ctx->jack,
				    cht_bsw_jack_pins, FUNC0(cht_bsw_jack_pins));
	if (ret) {
		FUNC4(runtime->dev, "Headset jack creation failed %d\n", ret);
		return ret;
	}

	FUNC6(component, &ctx->jack, &ctx->jack, &ctx->jack);


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
	ret = FUNC2(ctx->mclk);
	if (!ret)
		FUNC1(ctx->mclk);

	ret = FUNC3(ctx->mclk, CHT_PLAT_CLK_3_HZ);

	if (ret)
		FUNC4(runtime->dev, "unable to set MCLK rate\n");

	return ret;
}