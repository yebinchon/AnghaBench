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
struct stm32_sai_sub_data {int /*<<< orphan*/  regmap; scalar_t__ master; int /*<<< orphan*/  sai_ck; int /*<<< orphan*/  irq_lock; struct snd_pcm_substream* substream; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAI_XCLRFR_MASK ; 
 int SAI_XCR2_MUTECNT_MASK ; 
 int SAI_XIMR_AFSDETIE ; 
 int SAI_XIMR_LFSDETIE ; 
 int /*<<< orphan*/  SAI_XIMR_MASK ; 
 int SAI_XIMR_MUTEDETIE ; 
 int SAI_XIMR_OVRUDRIE ; 
 int SAI_XIMR_WCKCFGIE ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_S32_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  STM_SAI_CLRFR_REGX ; 
 int /*<<< orphan*/  STM_SAI_CR2_REGX ; 
 int /*<<< orphan*/  STM_SAI_IMR_REGX ; 
 scalar_t__ FUNC0 (struct stm32_sai_sub_data*) ; 
 scalar_t__ FUNC1 (struct stm32_sai_sub_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct stm32_sai_sub_data* FUNC9 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *cpu_dai)
{
	struct stm32_sai_sub_data *sai = FUNC9(cpu_dai);
	int imr, cr2, ret;
	unsigned long flags;

	FUNC10(&sai->irq_lock, flags);
	sai->substream = substream;
	FUNC11(&sai->irq_lock, flags);

	if (FUNC1(sai)) {
		FUNC7(substream->runtime,
					     SNDRV_PCM_HW_PARAM_FORMAT,
					     SNDRV_PCM_FMTBIT_S32_LE);
		FUNC8(substream->runtime,
					     SNDRV_PCM_HW_PARAM_CHANNELS, 2);
	}

	ret = FUNC2(sai->sai_ck);
	if (ret < 0) {
		FUNC3(cpu_dai->dev, "Failed to enable clock: %d\n", ret);
		return ret;
	}

	/* Enable ITs */
	FUNC6(sai->regmap, STM_SAI_CLRFR_REGX,
			  SAI_XCLRFR_MASK, SAI_XCLRFR_MASK);

	imr = SAI_XIMR_OVRUDRIE;
	if (FUNC0(sai)) {
		FUNC4(sai->regmap, STM_SAI_CR2_REGX, &cr2);
		if (cr2 & SAI_XCR2_MUTECNT_MASK)
			imr |= SAI_XIMR_MUTEDETIE;
	}

	if (sai->master)
		imr |= SAI_XIMR_WCKCFGIE;
	else
		imr |= SAI_XIMR_AFSDETIE | SAI_XIMR_LFSDETIE;

	FUNC5(sai->regmap, STM_SAI_IMR_REGX,
			   SAI_XIMR_MASK, imr);

	return 0;
}