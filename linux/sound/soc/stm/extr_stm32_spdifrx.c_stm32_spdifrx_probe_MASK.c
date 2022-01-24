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
typedef  scalar_t__ u32 ;
struct stm32_spdifrx_data {scalar_t__ dmab; struct reset_control* ctrl_chan; struct reset_control* regmap; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap_conf; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; int /*<<< orphan*/  cs_completion; struct platform_device* pdev; } ;
struct snd_dmaengine_pcm_config {int dummy; } ;
struct reset_control {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct reset_control*) ; 
 int FUNC3 (struct reset_control*) ; 
 scalar_t__ SPDIFRX_IPIDR_NUMBER ; 
 int /*<<< orphan*/  SPDIFRX_VERR_MAJ_MASK ; 
 int /*<<< orphan*/  SPDIFRX_VERR_MIN_MASK ; 
 int /*<<< orphan*/  STM32_SPDIFRX_IDR ; 
 int /*<<< orphan*/  STM32_SPDIFRX_VERR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct stm32_spdifrx_data* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_spdifrx_data*) ; 
 struct reset_control* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct snd_dmaengine_pcm_config const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct stm32_spdifrx_data*) ; 
 int FUNC16 (struct reset_control*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC18 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_spdifrx_component ; 
 int /*<<< orphan*/  stm32_spdifrx_dai ; 
 int FUNC21 (int /*<<< orphan*/ *,struct stm32_spdifrx_data*) ; 
 int /*<<< orphan*/  stm32_spdifrx_isr ; 
 int FUNC22 (struct platform_device*,struct stm32_spdifrx_data*) ; 
 struct snd_dmaengine_pcm_config stm32_spdifrx_pcm_config ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct stm32_spdifrx_data *spdifrx;
	struct reset_control *rst;
	const struct snd_dmaengine_pcm_config *pcm_config = NULL;
	u32 ver, idr;
	int ret;

	spdifrx = FUNC7(&pdev->dev, sizeof(*spdifrx), GFP_KERNEL);
	if (!spdifrx)
		return -ENOMEM;

	spdifrx->pdev = pdev;
	FUNC14(&spdifrx->cs_completion);
	FUNC20(&spdifrx->lock);

	FUNC15(pdev, spdifrx);

	ret = FUNC22(pdev, spdifrx);
	if (ret)
		return ret;

	spdifrx->regmap = FUNC8(&pdev->dev, "kclk",
						    spdifrx->base,
						    spdifrx->regmap_conf);
	if (FUNC2(spdifrx->regmap)) {
		FUNC5(&pdev->dev, "Regmap init failed\n");
		return FUNC3(spdifrx->regmap);
	}

	ret = FUNC9(&pdev->dev, spdifrx->irq, stm32_spdifrx_isr, 0,
			       FUNC6(&pdev->dev), spdifrx);
	if (ret) {
		FUNC5(&pdev->dev, "IRQ request returned %d\n", ret);
		return ret;
	}

	rst = FUNC10(&pdev->dev, NULL);
	if (!FUNC2(rst)) {
		FUNC17(rst);
		FUNC23(2);
		FUNC18(rst);
	}

	ret = FUNC12(&pdev->dev,
					      &stm32_spdifrx_component,
					      stm32_spdifrx_dai,
					      FUNC0(stm32_spdifrx_dai));
	if (ret)
		return ret;

	ret = FUNC21(&pdev->dev, spdifrx);
	if (ret)
		goto error;

	pcm_config = &stm32_spdifrx_pcm_config;
	ret = FUNC11(&pdev->dev, pcm_config, 0);
	if (ret) {
		FUNC5(&pdev->dev, "PCM DMA register returned %d\n", ret);
		goto error;
	}

	ret = FUNC16(spdifrx->regmap, STM32_SPDIFRX_IDR, &idr);
	if (ret)
		goto error;

	if (idr == SPDIFRX_IPIDR_NUMBER) {
		ret = FUNC16(spdifrx->regmap, STM32_SPDIFRX_VERR, &ver);

		FUNC4(&pdev->dev, "SPDIFRX version: %lu.%lu registered\n",
			FUNC1(SPDIFRX_VERR_MAJ_MASK, ver),
			FUNC1(SPDIFRX_VERR_MIN_MASK, ver));
	}

	return ret;

error:
	if (!FUNC2(spdifrx->ctrl_chan))
		FUNC13(spdifrx->ctrl_chan);
	if (spdifrx->dmab)
		FUNC19(spdifrx->dmab);

	return ret;
}