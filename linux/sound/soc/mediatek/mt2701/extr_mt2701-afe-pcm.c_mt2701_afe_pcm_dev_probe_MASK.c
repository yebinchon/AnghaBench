#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct mtk_base_afe {int memif_size; int irqs_size; int (* runtime_resume ) (struct device*) ;int /*<<< orphan*/  runtime_suspend; int /*<<< orphan*/  reg_back_up_list_num; int /*<<< orphan*/ * reg_back_up_list; int /*<<< orphan*/  irq_fs; int /*<<< orphan*/  memif_fs; int /*<<< orphan*/ * mtk_afe_hardware; TYPE_3__* irqs; TYPE_2__* memif; int /*<<< orphan*/  irq_alloc_lock; int /*<<< orphan*/  regmap; struct device* dev; struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {int dummy; } ;
struct mt2701_afe_private {TYPE_4__* i2s_path; TYPE_5__* soc; } ;
struct TYPE_10__ {int i2s_num; } ;
struct TYPE_9__ {int /*<<< orphan*/ ** i2s_data; } ;
struct TYPE_8__ {int /*<<< orphan*/ * irq_data; } ;
struct TYPE_7__ {int irq_usage; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MT2701_IRQ_ASYS_END ; 
 int MT2701_MEMIF_NUM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * irq_data ; 
 int /*<<< orphan*/ * memif_data ; 
 int /*<<< orphan*/ * mt2701_afe_backup_list ; 
 int /*<<< orphan*/  mt2701_afe_hardware ; 
 int /*<<< orphan*/  mt2701_afe_pcm_dai_component ; 
 int /*<<< orphan*/ * mt2701_afe_pcm_dais ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  mt2701_afe_runtime_suspend ; 
 int /*<<< orphan*/  mt2701_asys_isr ; 
 int /*<<< orphan*/ ** mt2701_i2s_data ; 
 int FUNC10 (struct mtk_base_afe*) ; 
 int /*<<< orphan*/  mt2701_irq_fs ; 
 int /*<<< orphan*/  mt2701_memif_fs ; 
 int /*<<< orphan*/  mtk_afe_pcm_platform ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 (struct device*) ; 
 int FUNC13 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct mtk_base_afe*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct mtk_base_afe *afe;
	struct mt2701_afe_private *afe_priv;
	struct device *dev;
	int i, irq_id, ret;

	afe = FUNC6(&pdev->dev, sizeof(*afe), GFP_KERNEL);
	if (!afe)
		return -ENOMEM;

	afe->platform_priv = FUNC6(&pdev->dev, sizeof(*afe_priv),
					  GFP_KERNEL);
	if (!afe->platform_priv)
		return -ENOMEM;

	afe_priv = afe->platform_priv;
	afe_priv->soc = FUNC12(&pdev->dev);
	afe->dev = &pdev->dev;
	dev = afe->dev;

	afe_priv->i2s_path = FUNC5(dev,
					  afe_priv->soc->i2s_num,
					  sizeof(struct mt2701_i2s_path),
					  GFP_KERNEL);
	if (!afe_priv->i2s_path)
		return -ENOMEM;

	irq_id = FUNC13(pdev, "asys");
	if (irq_id < 0)
		return irq_id;

	ret = FUNC7(dev, irq_id, mt2701_asys_isr,
			       IRQF_TRIGGER_NONE, "asys-isr", (void *)afe);
	if (ret) {
		FUNC3(dev, "could not request_irq for asys-isr\n");
		return ret;
	}

	afe->regmap = FUNC20(dev->parent->of_node);
	if (FUNC1(afe->regmap)) {
		FUNC3(dev, "could not get regmap from parent\n");
		return FUNC2(afe->regmap);
	}

	FUNC11(&afe->irq_alloc_lock);

	/* memif initialize */
	afe->memif_size = MT2701_MEMIF_NUM;
	afe->memif = FUNC5(dev, afe->memif_size, sizeof(*afe->memif),
				  GFP_KERNEL);
	if (!afe->memif)
		return -ENOMEM;

	for (i = 0; i < afe->memif_size; i++) {
		afe->memif[i].data = &memif_data[i];
		afe->memif[i].irq_usage = -1;
	}

	/* irq initialize */
	afe->irqs_size = MT2701_IRQ_ASYS_END;
	afe->irqs = FUNC5(dev, afe->irqs_size, sizeof(*afe->irqs),
				 GFP_KERNEL);
	if (!afe->irqs)
		return -ENOMEM;

	for (i = 0; i < afe->irqs_size; i++)
		afe->irqs[i].irq_data = &irq_data[i];

	/* I2S initialize */
	for (i = 0; i < afe_priv->soc->i2s_num; i++) {
		afe_priv->i2s_path[i].i2s_data[SNDRV_PCM_STREAM_PLAYBACK] =
			&mt2701_i2s_data[i][SNDRV_PCM_STREAM_PLAYBACK];
		afe_priv->i2s_path[i].i2s_data[SNDRV_PCM_STREAM_CAPTURE] =
			&mt2701_i2s_data[i][SNDRV_PCM_STREAM_CAPTURE];
	}

	afe->mtk_afe_hardware = &mt2701_afe_hardware;
	afe->memif_fs = mt2701_memif_fs;
	afe->irq_fs = mt2701_irq_fs;
	afe->reg_back_up_list = mt2701_afe_backup_list;
	afe->reg_back_up_list_num = FUNC0(mt2701_afe_backup_list);
	afe->runtime_resume = mt2701_afe_runtime_resume;
	afe->runtime_suspend = mt2701_afe_runtime_suspend;

	/* initial audio related clock */
	ret = FUNC10(afe);
	if (ret) {
		FUNC3(dev, "init clock error\n");
		return ret;
	}

	FUNC14(pdev, afe);

	FUNC16(dev);
	if (!FUNC17(dev)) {
		ret = FUNC9(dev);
		if (ret)
			goto err_pm_disable;
	}
	FUNC18(dev);

	ret = FUNC8(&pdev->dev, &mtk_afe_pcm_platform,
					      NULL, 0);
	if (ret) {
		FUNC4(dev, "err_platform\n");
		goto err_platform;
	}

	ret = FUNC8(&pdev->dev,
					 &mt2701_afe_pcm_dai_component,
					 mt2701_afe_pcm_dais,
					 FUNC0(mt2701_afe_pcm_dais));
	if (ret) {
		FUNC4(dev, "err_dai_component\n");
		goto err_platform;
	}

	return 0;

err_platform:
	FUNC19(dev);
err_pm_disable:
	FUNC15(dev);

	return ret;
}