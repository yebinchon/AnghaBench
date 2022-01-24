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
struct cht_mc_private {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_CODEC_DAI1 ; 
 int /*<<< orphan*/  CHT_CODEC_DAI2 ; 
 int EIO ; 
 int /*<<< orphan*/  RT5645_SCLK_S_RCCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dai* FUNC4 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 struct cht_mc_private* FUNC5 (struct snd_soc_card*) ; 
 int FUNC6 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *k, int  event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct snd_soc_dai *codec_dai;
	struct cht_mc_private *ctx = FUNC5(card);
	int ret;

	codec_dai = FUNC4(card, CHT_CODEC_DAI1);
	if (!codec_dai)
		codec_dai = FUNC4(card, CHT_CODEC_DAI2);

	if (!codec_dai) {
		FUNC3(card->dev, "Codec dai not found; Unable to set platform clock\n");
		return -EIO;
	}

	if (FUNC0(event)) {
		ret = FUNC2(ctx->mclk);
		if (ret < 0) {
			FUNC3(card->dev,
				"could not configure MCLK state");
			return ret;
		}
	} else {
		/* Set codec sysclk source to its internal clock because codec PLL will
		 * be off when idle and MCLK will also be off when codec is
		 * runtime suspended. Codec needs clock for jack detection and button
		 * press. MCLK is turned off with clock framework or ACPI.
		 */
		ret = FUNC6(codec_dai, RT5645_SCLK_S_RCCLK,
					48000 * 512, SND_SOC_CLOCK_IN);
		if (ret < 0) {
			FUNC3(card->dev, "can't set codec sysclk: %d\n", ret);
			return ret;
		}

		FUNC1(ctx->mclk);
	}

	return 0;
}