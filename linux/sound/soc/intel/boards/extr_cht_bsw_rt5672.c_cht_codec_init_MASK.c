#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; int /*<<< orphan*/  card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  jack; } ;
struct cht_mc_private {scalar_t__ mclk; TYPE_1__ headset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHT_PLAT_CLK_3_HZ ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int RT5670_AD_MONO_L_FILTER ; 
 int RT5670_AD_MONO_R_FILTER ; 
 int RT5670_AD_STEREO_FILTER ; 
 int /*<<< orphan*/  RT5670_CLK_SEL_I2S1_ASRC ; 
 int RT5670_DA_MONO_L_FILTER ; 
 int RT5670_DA_MONO_R_FILTER ; 
 int RT5670_DA_STEREO_FILTER ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  cht_bsw_headset_pins ; 
 int /*<<< orphan*/  cht_rt5672_gpios ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct cht_mc_private* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_pcm_runtime *runtime)
{
	int ret;
	struct snd_soc_dai *codec_dai = runtime->codec_dai;
	struct snd_soc_component *component = codec_dai->component;
	struct cht_mc_private *ctx = FUNC10(runtime->card);

	if (FUNC6(component->dev, cht_rt5672_gpios))
		FUNC5(runtime->dev, "Unable to add GPIO mapping table\n");

	/* Select codec ASRC clock source to track I2S1 clock, because codec
	 * is in slave mode and 100fs I2S format (BCLK = 100 * LRCLK) cannot
	 * be supported by RT5672. Otherwise, ASRC will be disabled and cause
	 * noise.
	 */
	FUNC7(component,
				RT5670_DA_STEREO_FILTER
				| RT5670_DA_MONO_L_FILTER
				| RT5670_DA_MONO_R_FILTER
				| RT5670_AD_STEREO_FILTER
				| RT5670_AD_MONO_L_FILTER
				| RT5670_AD_MONO_R_FILTER,
				RT5670_CLK_SEL_I2S1_ASRC);

        ret = FUNC11(runtime->card, "Headset",
				    SND_JACK_HEADSET | SND_JACK_BTN_0 |
				    SND_JACK_BTN_1 | SND_JACK_BTN_2,
				    &ctx->headset,
				    cht_bsw_headset_pins,
				    FUNC0(cht_bsw_headset_pins));
        if (ret)
                return ret;

	FUNC9(ctx->headset.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC9(ctx->headset.jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
	FUNC9(ctx->headset.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);

	FUNC8(component, &ctx->headset);
	if (ctx->mclk) {
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

		if (ret) {
			FUNC4(runtime->dev, "unable to set MCLK rate\n");
			return ret;
		}
	}
	return 0;
}