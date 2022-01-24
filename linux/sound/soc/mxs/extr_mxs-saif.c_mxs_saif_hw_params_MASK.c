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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct mxs_saif {scalar_t__ base; int /*<<< orphan*/  clk; int /*<<< orphan*/  mclk; scalar_t__ mclk_in_use; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BM_SAIF_CTRL_BITCLK_48XFS_ENABLE ; 
 int BM_SAIF_CTRL_READ_MODE ; 
 int BM_SAIF_CTRL_WORD_LENGTH ; 
 int BM_SAIF_STAT_BUSY ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ SAIF_CTRL ; 
 scalar_t__ SAIF_STAT ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S20_3LE 129 
#define  SNDRV_PCM_FORMAT_S24_LE 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct mxs_saif* FUNC8 (struct mxs_saif*) ; 
 int FUNC9 (struct mxs_saif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_pcm_hw_params*) ; 
 struct mxs_saif* FUNC12 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *cpu_dai)
{
	struct mxs_saif *saif = FUNC12(cpu_dai);
	struct mxs_saif *master_saif;
	u32 scr, stat;
	int ret;

	master_saif = FUNC8(saif);
	if (!master_saif)
		return -EINVAL;

	/* mclk should already be set */
	if (!saif->mclk && saif->mclk_in_use) {
		FUNC7(cpu_dai->dev, "set mclk first\n");
		return -EINVAL;
	}

	stat = FUNC1(saif->base + SAIF_STAT);
	if (!saif->mclk_in_use && (stat & BM_SAIF_STAT_BUSY)) {
		FUNC7(cpu_dai->dev, "error: busy\n");
		return -EBUSY;
	}

	/*
	 * Set saif clk based on sample rate.
	 * If mclk is used, we also set mclk, if not, saif->mclk is
	 * default 0, means not used.
	 */
	ret = FUNC9(saif, saif->mclk, FUNC11(params));
	if (ret) {
		FUNC7(cpu_dai->dev, "unable to get proper clk\n");
		return ret;
	}

	if (saif != master_saif) {
		/*
		* Set an initial clock rate for the saif internal logic to work
		* properly. This is important when working in EXTMASTER mode
		* that uses the other saif's BITCLK&LRCLK but it still needs a
		* basic clock which should be fast enough for the internal
		* logic.
		*/
		FUNC4(saif->clk);
		ret = FUNC6(saif->clk, 24000000);
		FUNC3(saif->clk);
		if (ret)
			return ret;

		ret = FUNC5(master_saif->clk);
		if (ret)
			return ret;
	}

	scr = FUNC1(saif->base + SAIF_CTRL);

	scr &= ~BM_SAIF_CTRL_WORD_LENGTH;
	scr &= ~BM_SAIF_CTRL_BITCLK_48XFS_ENABLE;
	switch (FUNC10(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		scr |= FUNC0(0);
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		scr |= FUNC0(4);
		scr |= BM_SAIF_CTRL_BITCLK_48XFS_ENABLE;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		scr |= FUNC0(8);
		scr |= BM_SAIF_CTRL_BITCLK_48XFS_ENABLE;
		break;
	default:
		return -EINVAL;
	}

	/* Tx/Rx config */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		/* enable TX mode */
		scr &= ~BM_SAIF_CTRL_READ_MODE;
	} else {
		/* enable RX mode */
		scr |= BM_SAIF_CTRL_READ_MODE;
	}

	FUNC2(scr, saif->base + SAIF_CTRL);
	return 0;
}