#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mtk_base_afe {int memif_size; int irqs_size; int (* runtime_resume ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  runtime_suspend; int /*<<< orphan*/  reg_back_up_list_num; int /*<<< orphan*/ * reg_back_up_list; int /*<<< orphan*/  irq_fs; int /*<<< orphan*/  memif_fs; int /*<<< orphan*/ * mtk_afe_hardware; TYPE_2__* memif; TYPE_1__* irqs; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  base_addr; struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int dummy; } ;
struct TYPE_4__ {int irq_usage; int const_irq; int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {int irq_occupyed; int /*<<< orphan*/ * irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MT8173_AFE_IRQ_NUM ; 
 int MT8173_AFE_MEMIF_NUM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * irq_data ; 
 int /*<<< orphan*/ * memif_data ; 
 int /*<<< orphan*/ * mt8173_afe_backup_list ; 
 int /*<<< orphan*/  mt8173_afe_hardware ; 
 int /*<<< orphan*/  mt8173_afe_hdmi_dai_component ; 
 int /*<<< orphan*/ * mt8173_afe_hdmi_dais ; 
 int FUNC13 (struct mtk_base_afe*) ; 
 int /*<<< orphan*/  mt8173_afe_irq_handler ; 
 int /*<<< orphan*/  mt8173_afe_pcm_dai_component ; 
 int /*<<< orphan*/ * mt8173_afe_pcm_dais ; 
 int /*<<< orphan*/  mt8173_afe_regmap_config ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt8173_afe_runtime_suspend ; 
 int /*<<< orphan*/  mt8173_irq_fs ; 
 int /*<<< orphan*/  mt8173_memif_fs ; 
 int /*<<< orphan*/  mtk_afe_pcm_platform ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct mtk_base_afe*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	int ret, i;
	int irq_id;
	struct mtk_base_afe *afe;
	struct mt8173_afe_private *afe_priv;

	ret = FUNC12(&pdev->dev, FUNC1(33));
	if (ret)
		return ret;

	afe = FUNC7(&pdev->dev, sizeof(*afe), GFP_KERNEL);
	if (!afe)
		return -ENOMEM;

	afe->platform_priv = FUNC7(&pdev->dev, sizeof(*afe_priv),
					  GFP_KERNEL);
	afe_priv = afe->platform_priv;
	if (!afe_priv)
		return -ENOMEM;

	afe->dev = &pdev->dev;

	irq_id = FUNC15(pdev, 0);
	if (irq_id <= 0)
		return irq_id < 0 ? irq_id : -ENXIO;
	ret = FUNC10(afe->dev, irq_id, mt8173_afe_irq_handler,
			       0, "Afe_ISR_Handle", (void *)afe);
	if (ret) {
		FUNC4(afe->dev, "could not request_irq\n");
		return ret;
	}

	afe->base_addr = FUNC8(pdev, 0);
	if (FUNC2(afe->base_addr))
		return FUNC3(afe->base_addr);

	afe->regmap = FUNC9(&pdev->dev, afe->base_addr,
		&mt8173_afe_regmap_config);
	if (FUNC2(afe->regmap))
		return FUNC3(afe->regmap);

	/* initial audio related clock */
	ret = FUNC13(afe);
	if (ret) {
		FUNC4(afe->dev, "mt8173_afe_init_audio_clk fail\n");
		return ret;
	}

	/* memif % irq initialize*/
	afe->memif_size = MT8173_AFE_MEMIF_NUM;
	afe->memif = FUNC6(afe->dev, afe->memif_size,
				  sizeof(*afe->memif), GFP_KERNEL);
	if (!afe->memif)
		return -ENOMEM;

	afe->irqs_size = MT8173_AFE_IRQ_NUM;
	afe->irqs = FUNC6(afe->dev, afe->irqs_size,
				 sizeof(*afe->irqs), GFP_KERNEL);
	if (!afe->irqs)
		return -ENOMEM;

	for (i = 0; i < afe->irqs_size; i++) {
		afe->memif[i].data = &memif_data[i];
		afe->irqs[i].irq_data = &irq_data[i];
		afe->irqs[i].irq_occupyed = true;
		afe->memif[i].irq_usage = i;
		afe->memif[i].const_irq = 1;
	}

	afe->mtk_afe_hardware = &mt8173_afe_hardware;
	afe->memif_fs = mt8173_memif_fs;
	afe->irq_fs = mt8173_irq_fs;

	FUNC16(pdev, afe);

	FUNC18(&pdev->dev);
	if (!FUNC19(&pdev->dev)) {
		ret = FUNC14(&pdev->dev);
		if (ret)
			goto err_pm_disable;
	}

	afe->reg_back_up_list = mt8173_afe_backup_list;
	afe->reg_back_up_list_num = FUNC0(mt8173_afe_backup_list);
	afe->runtime_resume = mt8173_afe_runtime_resume;
	afe->runtime_suspend = mt8173_afe_runtime_suspend;

	ret = FUNC11(&pdev->dev,
					 &mtk_afe_pcm_platform,
					 NULL, 0);
	if (ret)
		goto err_pm_disable;

	ret = FUNC11(&pdev->dev,
					 &mt8173_afe_pcm_dai_component,
					 mt8173_afe_pcm_dais,
					 FUNC0(mt8173_afe_pcm_dais));
	if (ret)
		goto err_pm_disable;

	ret = FUNC11(&pdev->dev,
					 &mt8173_afe_hdmi_dai_component,
					 mt8173_afe_hdmi_dais,
					 FUNC0(mt8173_afe_hdmi_dais));
	if (ret)
		goto err_pm_disable;

	FUNC5(&pdev->dev, "MT8173 AFE driver initialized.\n");
	return 0;

err_pm_disable:
	FUNC17(&pdev->dev);
	return ret;
}