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
 int EIO ; 
 int /*<<< orphan*/  NAU8825_CLK_INTERNAL ; 
 int /*<<< orphan*/  NAU8825_CLK_MCLK ; 
 int /*<<< orphan*/  SKL_NUVOTON_CODEC_DAI ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dai* FUNC2 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *k, int  event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct snd_soc_dai *codec_dai;
	int ret;

	codec_dai = FUNC2(card, SKL_NUVOTON_CODEC_DAI);
	if (!codec_dai) {
		FUNC1(card->dev, "Codec dai not found; Unable to set platform clock\n");
		return -EIO;
	}

	if (FUNC0(event)) {
		ret = FUNC3(codec_dai,
				NAU8825_CLK_MCLK, 24000000, SND_SOC_CLOCK_IN);
		if (ret < 0) {
			FUNC1(card->dev, "set sysclk err = %d\n", ret);
			return -EIO;
		}
	} else {
		ret = FUNC3(codec_dai,
				NAU8825_CLK_INTERNAL, 0, SND_SOC_CLOCK_IN);
		if (ret < 0) {
			FUNC1(card->dev, "set sysclk err = %d\n", ret);
			return -EIO;
		}
	}

	return ret;
}