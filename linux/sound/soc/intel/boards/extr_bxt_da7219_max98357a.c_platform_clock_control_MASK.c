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

/* Variables and functions */
 int /*<<< orphan*/  BXT_DIALOG_CODEC_DAI ; 
 int /*<<< orphan*/  DA7219_PLL_FREQ_OUT_98304 ; 
 int /*<<< orphan*/  DA7219_SYSCLK_MCLK ; 
 int /*<<< orphan*/  DA7219_SYSCLK_PLL_SRM ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dai* FUNC3 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *k, int  event)
{
	int ret = 0;
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct snd_soc_dai *codec_dai;

	codec_dai = FUNC3(card, BXT_DIALOG_CODEC_DAI);
	if (!codec_dai) {
		FUNC2(card->dev, "Codec dai not found; Unable to set/unset codec pll\n");
		return -EIO;
	}

	if (FUNC0(event)) {
		ret = FUNC4(codec_dai, 0,
			DA7219_SYSCLK_MCLK, 0, 0);
		if (ret)
			FUNC2(card->dev, "failed to stop PLL: %d\n", ret);
	} else if(FUNC1(event)) {
		ret = FUNC4(codec_dai, 0,
			DA7219_SYSCLK_PLL_SRM, 0, DA7219_PLL_FREQ_OUT_98304);
		if (ret)
			FUNC2(card->dev, "failed to start PLL: %d\n", ret);
	}

	return ret;
}