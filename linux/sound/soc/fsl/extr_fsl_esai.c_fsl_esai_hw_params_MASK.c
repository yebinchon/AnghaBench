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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct fsl_esai {int slots; int slot_width; int /*<<< orphan*/  regmap; int /*<<< orphan*/  fifo_depth; scalar_t__ synchronous; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  ESAI_GPIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ESAI_PCRC_PC_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ESAI_PRRC_PDC_MASK ; 
 int ESAI_xCR_PADC ; 
 int ESAI_xCR_xMOD_MASK ; 
 int ESAI_xCR_xMOD_NETWORK ; 
 int FUNC3 (int,int) ; 
 int ESAI_xCR_xSWS_MASK ; 
 int FUNC4 (int) ; 
 int ESAI_xFCR_RE_MASK ; 
 int FUNC5 (int) ; 
 int ESAI_xFCR_TE_MASK ; 
 int ESAI_xFCR_TIEN ; 
 int ESAI_xFCR_xFR ; 
 int ESAI_xFCR_xFR_MASK ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int ESAI_xFCR_xFWM_MASK ; 
 int FUNC7 (int) ; 
 int ESAI_xFCR_xWA_MASK ; 
 int /*<<< orphan*/  REG_ESAI_PCRC ; 
 int /*<<< orphan*/  REG_ESAI_PRRC ; 
 int /*<<< orphan*/  REG_ESAI_TCR ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC10 (struct snd_soc_dai*,int,int) ; 
 int FUNC11 (struct snd_pcm_hw_params*) ; 
 int FUNC12 (struct snd_pcm_hw_params*) ; 
 int FUNC13 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct fsl_esai* FUNC15 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC16(struct snd_pcm_substream *substream,
			      struct snd_pcm_hw_params *params,
			      struct snd_soc_dai *dai)
{
	struct fsl_esai *esai_priv = FUNC15(dai);
	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	u32 width = FUNC13(params);
	u32 channels = FUNC11(params);
	u32 pins = FUNC0(channels, esai_priv->slots);
	u32 slot_width = width;
	u32 bclk, mask, val;
	int ret;

	/* Override slot_width if being specifically set */
	if (esai_priv->slot_width)
		slot_width = esai_priv->slot_width;

	bclk = FUNC12(params) * slot_width * esai_priv->slots;

	ret = FUNC10(dai, esai_priv->synchronous || tx, bclk);
	if (ret)
		return ret;

	mask = ESAI_xCR_xSWS_MASK;
	val = FUNC3(slot_width, width);

	FUNC14(esai_priv->regmap, FUNC8(tx), mask, val);
	/* Recording in synchronous mode needs to set TCR also */
	if (!tx && esai_priv->synchronous)
		FUNC14(esai_priv->regmap, REG_ESAI_TCR, mask, val);

	/* Use Normal mode to support monaural audio */
	FUNC14(esai_priv->regmap, FUNC8(tx),
			   ESAI_xCR_xMOD_MASK, FUNC11(params) > 1 ?
			   ESAI_xCR_xMOD_NETWORK : 0);

	FUNC14(esai_priv->regmap, FUNC9(tx),
			   ESAI_xFCR_xFR_MASK, ESAI_xFCR_xFR);

	mask = ESAI_xFCR_xFR_MASK | ESAI_xFCR_xWA_MASK | ESAI_xFCR_xFWM_MASK |
	      (tx ? ESAI_xFCR_TE_MASK | ESAI_xFCR_TIEN : ESAI_xFCR_RE_MASK);
	val = FUNC7(width) | FUNC6(esai_priv->fifo_depth) |
	     (tx ? FUNC5(pins) | ESAI_xFCR_TIEN : FUNC4(pins));

	FUNC14(esai_priv->regmap, FUNC9(tx), mask, val);

	if (tx)
		FUNC14(esai_priv->regmap, REG_ESAI_TCR,
				ESAI_xCR_PADC, ESAI_xCR_PADC);

	/* Remove ESAI personal reset by configuring ESAI_PCRC and ESAI_PRRC */
	FUNC14(esai_priv->regmap, REG_ESAI_PRRC,
			   ESAI_PRRC_PDC_MASK, FUNC2(ESAI_GPIO));
	FUNC14(esai_priv->regmap, REG_ESAI_PCRC,
			   ESAI_PCRC_PC_MASK, FUNC1(ESAI_GPIO));
	return 0;
}