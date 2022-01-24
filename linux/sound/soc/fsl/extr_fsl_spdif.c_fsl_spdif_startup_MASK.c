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
typedef  int u32 ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_soc_dai {int /*<<< orphan*/  active; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_spdif_priv {int /*<<< orphan*/  coreclk; int /*<<< orphan*/  spbaclk; int /*<<< orphan*/ * txclk; int /*<<< orphan*/  rxclk; struct regmap* regmap; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_SPDIF_SCR ; 
 int /*<<< orphan*/  REG_SPDIF_SIE ; 
 int SCR_LOW_POWER ; 
 int SCR_RXFIFO_AUTOSYNC ; 
 int SCR_RXFIFO_AUTOSYNC_MASK ; 
 int SCR_RXFIFO_CTL_MASK ; 
 int SCR_RXFIFO_FSEL_IF8 ; 
 int SCR_RXFIFO_FSEL_MASK ; 
 int SCR_RXFIFO_OFF_MASK ; 
 int SCR_TXFIFO_AUTOSYNC ; 
 int SCR_TXFIFO_AUTOSYNC_MASK ; 
 int SCR_TXFIFO_CTRL_MASK ; 
 int SCR_TXFIFO_CTRL_NORMAL ; 
 int SCR_TXFIFO_FSEL_IF8 ; 
 int SCR_TXFIFO_FSEL_MASK ; 
 int SCR_TXSEL_MASK ; 
 int SCR_TXSEL_NORMAL ; 
 int SCR_USRC_SEL_CHIP ; 
 int SCR_USRC_SEL_MASK ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int SPDIF_TXRATE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 struct fsl_spdif_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fsl_spdif_priv*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *cpu_dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct fsl_spdif_priv *spdif_priv = FUNC5(rtd->cpu_dai);
	struct platform_device *pdev = spdif_priv->pdev;
	struct regmap *regmap = spdif_priv->regmap;
	u32 scr, mask;
	int i;
	int ret;

	/* Reset module and interrupts only for first initialization */
	if (!cpu_dai->active) {
		ret = FUNC2(spdif_priv->coreclk);
		if (ret) {
			FUNC3(&pdev->dev, "failed to enable core clock\n");
			return ret;
		}

		if (!FUNC0(spdif_priv->spbaclk)) {
			ret = FUNC2(spdif_priv->spbaclk);
			if (ret) {
				FUNC3(&pdev->dev, "failed to enable spba clock\n");
				goto err_spbaclk;
			}
		}

		ret = FUNC6(spdif_priv);
		if (ret) {
			FUNC3(&pdev->dev, "failed to soft reset\n");
			goto err;
		}

		/* Disable all the interrupts */
		FUNC4(regmap, REG_SPDIF_SIE, 0xffffff, 0);
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		scr = SCR_TXFIFO_AUTOSYNC | SCR_TXFIFO_CTRL_NORMAL |
			SCR_TXSEL_NORMAL | SCR_USRC_SEL_CHIP |
			SCR_TXFIFO_FSEL_IF8;
		mask = SCR_TXFIFO_AUTOSYNC_MASK | SCR_TXFIFO_CTRL_MASK |
			SCR_TXSEL_MASK | SCR_USRC_SEL_MASK |
			SCR_TXFIFO_FSEL_MASK;
		for (i = 0; i < SPDIF_TXRATE_MAX; i++) {
			ret = FUNC2(spdif_priv->txclk[i]);
			if (ret)
				goto disable_txclk;
		}
	} else {
		scr = SCR_RXFIFO_FSEL_IF8 | SCR_RXFIFO_AUTOSYNC;
		mask = SCR_RXFIFO_FSEL_MASK | SCR_RXFIFO_AUTOSYNC_MASK|
			SCR_RXFIFO_CTL_MASK | SCR_RXFIFO_OFF_MASK;
		ret = FUNC2(spdif_priv->rxclk);
		if (ret)
			goto err;
	}
	FUNC4(regmap, REG_SPDIF_SCR, mask, scr);

	/* Power up SPDIF module */
	FUNC4(regmap, REG_SPDIF_SCR, SCR_LOW_POWER, 0);

	return 0;

disable_txclk:
	for (i--; i >= 0; i--)
		FUNC1(spdif_priv->txclk[i]);
err:
	if (!FUNC0(spdif_priv->spbaclk))
		FUNC1(spdif_priv->spbaclk);
err_spbaclk:
	FUNC1(spdif_priv->coreclk);

	return ret;
}