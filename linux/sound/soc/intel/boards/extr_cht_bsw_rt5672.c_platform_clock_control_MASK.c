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
struct cht_mc_private {scalar_t__ mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_CODEC_DAI ; 
 int /*<<< orphan*/  CHT_PLAT_CLK_3_HZ ; 
 int EIO ; 
 int /*<<< orphan*/  RT5670_PLL1_S_MCLK ; 
 int /*<<< orphan*/  RT5670_SCLK_S_PLL1 ; 
 int /*<<< orphan*/  RT5670_SCLK_S_RCCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dai* FUNC4 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 struct cht_mc_private* FUNC5 (struct snd_soc_card*) ; 
 int FUNC6 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *k, int  event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct snd_soc_dai *codec_dai;
	struct cht_mc_private *ctx = FUNC5(card);
	int ret;

	codec_dai = FUNC4(card, CHT_CODEC_DAI);
	if (!codec_dai) {
		FUNC3(card->dev, "Codec dai not found; Unable to set platform clock\n");
		return -EIO;
	}

	if (FUNC0(event)) {
		if (ctx->mclk) {
			ret = FUNC2(ctx->mclk);
			if (ret < 0) {
				FUNC3(card->dev,
					"could not configure MCLK state");
				return ret;
			}
		}

		/* set codec PLL source to the 19.2MHz platform clock (MCLK) */
		ret = FUNC6(codec_dai, 0, RT5670_PLL1_S_MCLK,
				CHT_PLAT_CLK_3_HZ, 48000 * 512);
		if (ret < 0) {
			FUNC3(card->dev, "can't set codec pll: %d\n", ret);
			return ret;
		}

		/* set codec sysclk source to PLL */
		ret = FUNC7(codec_dai, RT5670_SCLK_S_PLL1,
			48000 * 512, SND_SOC_CLOCK_IN);
		if (ret < 0) {
			FUNC3(card->dev, "can't set codec sysclk: %d\n", ret);
			return ret;
		}
	} else {
		/* Set codec sysclk source to its internal clock because codec
		 * PLL will be off when idle and MCLK will also be off by ACPI
		 * when codec is runtime suspended. Codec needs clock for jack
		 * detection and button press.
		 */
		FUNC7(codec_dai, RT5670_SCLK_S_RCCLK,
				       48000 * 512, SND_SOC_CLOCK_IN);

		if (ctx->mclk)
			FUNC1(ctx->mclk);
	}
	return 0;
}