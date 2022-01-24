#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  runtime; } ;
struct TYPE_5__ {int /*<<< orphan*/  maxburst; } ;
struct TYPE_4__ {int /*<<< orphan*/  maxburst; } ;
struct fsl_sai {TYPE_2__ dma_params_rx; TYPE_1__ dma_params_tx; TYPE_3__* soc_data; int /*<<< orphan*/  regmap; } ;
struct TYPE_6__ {unsigned int reg_offset; scalar_t__ use_edma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSL_SAI_CR3_TRCE ; 
 int /*<<< orphan*/  FSL_SAI_CR3_TRCE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  fsl_sai_rate_constraints ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_sai* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
		struct snd_soc_dai *cpu_dai)
{
	struct fsl_sai *sai = FUNC4(cpu_dai);
	unsigned int ofs = sai->soc_data->reg_offset;
	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	int ret;

	FUNC1(sai->regmap, FUNC0(tx, ofs),
			   FSL_SAI_CR3_TRCE_MASK,
			   FSL_SAI_CR3_TRCE);

	/*
	 * EDMA controller needs period size to be a multiple of
	 * tx/rx maxburst
	 */
	if (sai->soc_data->use_edma)
		FUNC3(substream->runtime, 0,
					   SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
					   tx ? sai->dma_params_tx.maxburst :
					   sai->dma_params_rx.maxburst);

	ret = FUNC2(substream->runtime, 0,
			SNDRV_PCM_HW_PARAM_RATE, &fsl_sai_rate_constraints);

	return ret;
}