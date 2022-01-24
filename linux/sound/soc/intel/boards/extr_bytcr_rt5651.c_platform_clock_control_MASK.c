#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct byt_rt5651_private {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYT_CODEC_DAI1 ; 
 int /*<<< orphan*/  BYT_CODEC_DAI2 ; 
 int BYT_RT5651_MCLK_EN ; 
 int EIO ; 
 int /*<<< orphan*/  RT5651_SCLK_S_RCCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_dai*,int,int) ; 
 int byt_rt5651_quirk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dai* FUNC5 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 struct byt_rt5651_private* FUNC6 (struct snd_soc_card*) ; 
 int FUNC7 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
				  struct snd_kcontrol *k, int  event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct snd_soc_dai *codec_dai;
	struct byt_rt5651_private *priv = FUNC6(card);
	int ret;

	codec_dai = FUNC5(card, BYT_CODEC_DAI1);
	if (!codec_dai)
		codec_dai = FUNC5(card, BYT_CODEC_DAI2);
	if (!codec_dai) {
		FUNC4(card->dev,
			"Codec dai not found; Unable to set platform clock\n");
		return -EIO;
	}

	if (FUNC0(event)) {
		if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN) {
			ret = FUNC3(priv->mclk);
			if (ret < 0) {
				FUNC4(card->dev,
					"could not configure MCLK state");
				return ret;
			}
		}
		ret = FUNC1(codec_dai, 48000, 50);
	} else {
		/*
		 * Set codec clock source to internal clock before
		 * turning off the platform clock. Codec needs clock
		 * for Jack detection and button press
		 */
		ret = FUNC7(codec_dai, RT5651_SCLK_S_RCCLK,
					     48000 * 512,
					     SND_SOC_CLOCK_IN);
		if (!ret)
			if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN)
				FUNC2(priv->mclk);
	}

	if (ret < 0) {
		FUNC4(card->dev, "can't set codec sysclk: %d\n", ret);
		return ret;
	}

	return 0;
}