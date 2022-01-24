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
struct stm32_sai_sub_data {int /*<<< orphan*/  irq_lock; scalar_t__ substream; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ snd_pcm_state_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SAI_XCLRFR_MASK ; 
 unsigned int SAI_XIMR_AFSDETIE ; 
 unsigned int SAI_XIMR_CNRDYIE ; 
 unsigned int SAI_XIMR_LFSDETIE ; 
 unsigned int SAI_XIMR_MUTEDETIE ; 
 unsigned int SAI_XIMR_OVRUDRIE ; 
 unsigned int SAI_XIMR_WCKCFGIE ; 
 scalar_t__ SNDRV_PCM_STATE_DISCONNECTED ; 
 scalar_t__ SNDRV_PCM_STATE_RUNNING ; 
 scalar_t__ SNDRV_PCM_STATE_XRUN ; 
 int /*<<< orphan*/  STM_SAI_CLRFR_REGX ; 
 int /*<<< orphan*/  STM_SAI_IMR_REGX ; 
 scalar_t__ FUNC0 (struct stm32_sai_sub_data*) ; 
 int /*<<< orphan*/  STM_SAI_SR_REGX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *devid)
{
	struct stm32_sai_sub_data *sai = (struct stm32_sai_sub_data *)devid;
	struct platform_device *pdev = sai->pdev;
	unsigned int sr, imr, flags;
	snd_pcm_state_t status = SNDRV_PCM_STATE_RUNNING;

	FUNC3(sai->regmap, STM_SAI_IMR_REGX, &imr);
	FUNC3(sai->regmap, STM_SAI_SR_REGX, &sr);

	flags = sr & imr;
	if (!flags)
		return IRQ_NONE;

	FUNC4(sai->regmap, STM_SAI_CLRFR_REGX, SAI_XCLRFR_MASK,
			  SAI_XCLRFR_MASK);

	if (!sai->substream) {
		FUNC2(&pdev->dev, "Device stopped. Spurious IRQ 0x%x\n", sr);
		return IRQ_NONE;
	}

	if (flags & SAI_XIMR_OVRUDRIE) {
		FUNC2(&pdev->dev, "IRQ %s\n",
			FUNC0(sai) ? "underrun" : "overrun");
		status = SNDRV_PCM_STATE_XRUN;
	}

	if (flags & SAI_XIMR_MUTEDETIE)
		FUNC1(&pdev->dev, "IRQ mute detected\n");

	if (flags & SAI_XIMR_WCKCFGIE) {
		FUNC2(&pdev->dev, "IRQ wrong clock configuration\n");
		status = SNDRV_PCM_STATE_DISCONNECTED;
	}

	if (flags & SAI_XIMR_CNRDYIE)
		FUNC2(&pdev->dev, "IRQ Codec not ready\n");

	if (flags & SAI_XIMR_AFSDETIE) {
		FUNC2(&pdev->dev, "IRQ Anticipated frame synchro\n");
		status = SNDRV_PCM_STATE_XRUN;
	}

	if (flags & SAI_XIMR_LFSDETIE) {
		FUNC2(&pdev->dev, "IRQ Late frame synchro\n");
		status = SNDRV_PCM_STATE_XRUN;
	}

	FUNC6(&sai->irq_lock);
	if (status != SNDRV_PCM_STATE_RUNNING && sai->substream)
		FUNC5(sai->substream);
	FUNC7(&sai->irq_lock);

	return IRQ_HANDLED;
}