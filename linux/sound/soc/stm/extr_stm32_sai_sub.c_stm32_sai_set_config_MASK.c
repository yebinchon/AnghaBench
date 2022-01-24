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
struct stm32_sai_sub_data {int slots; int /*<<< orphan*/  regmap; scalar_t__ spdif_frm_cnt; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SAI_DATASIZE_16 ; 
 int /*<<< orphan*/  SAI_DATASIZE_32 ; 
 int /*<<< orphan*/  SAI_DATASIZE_8 ; 
 int SAI_XCR1_DS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SAI_XCR1_MONO ; 
 int SAI_XCR2_FFLUSH ; 
 int SAI_XCR2_FTH_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S32_LE 129 
#define  SNDRV_PCM_FORMAT_S8 128 
 int /*<<< orphan*/  STM_SAI_CR1_REGX ; 
 int /*<<< orphan*/  STM_SAI_CR2_REGX ; 
 int /*<<< orphan*/  STM_SAI_FIFO_TH_HALF ; 
 scalar_t__ FUNC2 (struct stm32_sai_sub_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct stm32_sai_sub_data* FUNC8 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_dai *cpu_dai,
				struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params)
{
	struct stm32_sai_sub_data *sai = FUNC8(cpu_dai);
	int cr1, cr1_mask, ret;

	/*
	 * DMA bursts increment is set to 4 words.
	 * SAI fifo threshold is set to half fifo, to keep enough space
	 * for DMA incoming bursts.
	 */
	FUNC7(sai->regmap, STM_SAI_CR2_REGX,
			  SAI_XCR2_FFLUSH | SAI_XCR2_FTH_MASK,
			  SAI_XCR2_FFLUSH |
			  FUNC1(STM_SAI_FIFO_TH_HALF));

	/* DS bits in CR1 not set for SPDIF (size forced to 24 bits).*/
	if (FUNC2(sai)) {
		sai->spdif_frm_cnt = 0;
		return 0;
	}

	/* Mode, data format and channel config */
	cr1_mask = SAI_XCR1_DS_MASK;
	switch (FUNC5(params)) {
	case SNDRV_PCM_FORMAT_S8:
		cr1 = FUNC0(SAI_DATASIZE_8);
		break;
	case SNDRV_PCM_FORMAT_S16_LE:
		cr1 = FUNC0(SAI_DATASIZE_16);
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		cr1 = FUNC0(SAI_DATASIZE_32);
		break;
	default:
		FUNC3(cpu_dai->dev, "Data format not supported");
		return -EINVAL;
	}

	cr1_mask |= SAI_XCR1_MONO;
	if ((sai->slots == 2) && (FUNC4(params) == 1))
		cr1 |= SAI_XCR1_MONO;

	ret = FUNC6(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
	if (ret < 0) {
		FUNC3(cpu_dai->dev, "Failed to update CR1 register\n");
		return ret;
	}

	return 0;
}