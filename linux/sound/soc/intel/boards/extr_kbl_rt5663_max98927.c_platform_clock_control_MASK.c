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
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct kbl_rt5663_private {int /*<<< orphan*/  sclk; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct kbl_rt5663_private* FUNC4 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			struct snd_kcontrol *k, int  event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct kbl_rt5663_private *priv = FUNC4(card);
	int ret = 0;

	/*
	 * MCLK/SCLK need to be ON early for a successful synchronization of
	 * codec internal clock. And the clocks are turned off during
	 * POST_PMD after the stream is stopped.
	 */
	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		/* Enable MCLK */
		ret = FUNC2(priv->mclk, 24000000);
		if (ret < 0) {
			FUNC3(card->dev, "Can't set rate for mclk, err: %d\n",
				ret);
			return ret;
		}

		ret = FUNC1(priv->mclk);
		if (ret < 0) {
			FUNC3(card->dev, "Can't enable mclk, err: %d\n", ret);
			return ret;
		}

		/* Enable SCLK */
		ret = FUNC2(priv->sclk, 3072000);
		if (ret < 0) {
			FUNC3(card->dev, "Can't set rate for sclk, err: %d\n",
				ret);
			FUNC0(priv->mclk);
			return ret;
		}

		ret = FUNC1(priv->sclk);
		if (ret < 0) {
			FUNC3(card->dev, "Can't enable sclk, err: %d\n", ret);
			FUNC0(priv->mclk);
		}
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC0(priv->mclk);
		FUNC0(priv->sclk);
		break;
	default:
		return 0;
	}

	return 0;
}