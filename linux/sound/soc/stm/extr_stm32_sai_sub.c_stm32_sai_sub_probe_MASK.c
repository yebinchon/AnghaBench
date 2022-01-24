#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct stm32_sai_sub_data {uintptr_t id; TYPE_1__ cpu_dai_drv; TYPE_10__* pdata; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  ctrl_lock; struct platform_device* pdev; } ;
struct snd_dmaengine_pcm_config {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_12__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct stm32_sai_sub_data*) ; 
 scalar_t__ FUNC1 (struct stm32_sai_sub_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct stm32_sai_sub_data* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_sai_sub_data*) ; 
 int FUNC7 (TYPE_3__*,struct snd_dmaengine_pcm_config const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct stm32_sai_sub_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_component ; 
 TYPE_1__ stm32_sai_capture_dai ; 
 int /*<<< orphan*/  stm32_sai_isr ; 
 struct snd_dmaengine_pcm_config stm32_sai_pcm_config ; 
 struct snd_dmaengine_pcm_config stm32_sai_pcm_config_spdif ; 
 TYPE_1__ stm32_sai_playback_dai ; 
 int /*<<< orphan*/  stm32_sai_sub_ids ; 
 int FUNC13 (struct platform_device*,struct stm32_sai_sub_data*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct stm32_sai_sub_data *sai;
	const struct of_device_id *of_id;
	const struct snd_dmaengine_pcm_config *conf = &stm32_sai_pcm_config;
	int ret;

	sai = FUNC5(&pdev->dev, sizeof(*sai), GFP_KERNEL);
	if (!sai)
		return -ENOMEM;

	of_id = FUNC10(stm32_sai_sub_ids, &pdev->dev);
	if (!of_id)
		return -EINVAL;
	sai->id = (uintptr_t)of_id->data;

	sai->pdev = pdev;
	FUNC9(&sai->ctrl_lock);
	FUNC12(&sai->irq_lock);
	FUNC11(pdev, sai);

	sai->pdata = FUNC3(pdev->dev.parent);
	if (!sai->pdata) {
		FUNC2(&pdev->dev, "Parent device data not available\n");
		return -EINVAL;
	}

	ret = FUNC13(pdev, sai);
	if (ret)
		return ret;

	if (FUNC0(sai))
		sai->cpu_dai_drv = stm32_sai_playback_dai;
	else
		sai->cpu_dai_drv = stm32_sai_capture_dai;
	sai->cpu_dai_drv.name = FUNC4(&pdev->dev);

	ret = FUNC6(&pdev->dev, sai->pdata->irq, stm32_sai_isr,
			       IRQF_SHARED, FUNC4(&pdev->dev), sai);
	if (ret) {
		FUNC2(&pdev->dev, "IRQ request returned %d\n", ret);
		return ret;
	}

	ret = FUNC8(&pdev->dev, &stm32_component,
					      &sai->cpu_dai_drv, 1);
	if (ret)
		return ret;

	if (FUNC1(sai))
		conf = &stm32_sai_pcm_config_spdif;

	ret = FUNC7(&pdev->dev, conf, 0);
	if (ret) {
		FUNC2(&pdev->dev, "Could not register pcm dma\n");
		return ret;
	}

	return 0;
}