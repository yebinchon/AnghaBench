
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct mtk_base_afe {int memif_size; int irqs_size; int (* runtime_resume ) (struct device*) ;int runtime_suspend; int reg_back_up_list_num; int * reg_back_up_list; int irq_fs; int memif_fs; int * mtk_afe_hardware; TYPE_3__* irqs; TYPE_2__* memif; int irq_alloc_lock; int regmap; struct device* dev; struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {int dummy; } ;
struct mt2701_afe_private {TYPE_4__* i2s_path; TYPE_5__* soc; } ;
struct TYPE_10__ {int i2s_num; } ;
struct TYPE_9__ {int ** i2s_data; } ;
struct TYPE_8__ {int * irq_data; } ;
struct TYPE_7__ {int irq_usage; int * data; } ;
struct TYPE_6__ {int of_node; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int MT2701_IRQ_ASYS_END ;
 int MT2701_MEMIF_NUM ;
 int PTR_ERR (int ) ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,void*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;
 int * irq_data ;
 int * memif_data ;
 int * mt2701_afe_backup_list ;
 int mt2701_afe_hardware ;
 int mt2701_afe_pcm_dai_component ;
 int * mt2701_afe_pcm_dais ;
 int mt2701_afe_runtime_resume (struct device*) ;
 int mt2701_afe_runtime_suspend ;
 int mt2701_asys_isr ;
 int ** mt2701_i2s_data ;
 int mt2701_init_clock (struct mtk_base_afe*) ;
 int mt2701_irq_fs ;
 int mt2701_memif_fs ;
 int mtk_afe_pcm_platform ;
 int mutex_init (int *) ;
 TYPE_5__* of_device_get_match_data (struct device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_base_afe*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int mt2701_afe_pcm_dev_probe(struct platform_device *pdev)
{
 struct mtk_base_afe *afe;
 struct mt2701_afe_private *afe_priv;
 struct device *dev;
 int i, irq_id, ret;

 afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
 if (!afe)
  return -ENOMEM;

 afe->platform_priv = devm_kzalloc(&pdev->dev, sizeof(*afe_priv),
       GFP_KERNEL);
 if (!afe->platform_priv)
  return -ENOMEM;

 afe_priv = afe->platform_priv;
 afe_priv->soc = of_device_get_match_data(&pdev->dev);
 afe->dev = &pdev->dev;
 dev = afe->dev;

 afe_priv->i2s_path = devm_kcalloc(dev,
       afe_priv->soc->i2s_num,
       sizeof(struct mt2701_i2s_path),
       GFP_KERNEL);
 if (!afe_priv->i2s_path)
  return -ENOMEM;

 irq_id = platform_get_irq_byname(pdev, "asys");
 if (irq_id < 0)
  return irq_id;

 ret = devm_request_irq(dev, irq_id, mt2701_asys_isr,
          IRQF_TRIGGER_NONE, "asys-isr", (void *)afe);
 if (ret) {
  dev_err(dev, "could not request_irq for asys-isr\n");
  return ret;
 }

 afe->regmap = syscon_node_to_regmap(dev->parent->of_node);
 if (IS_ERR(afe->regmap)) {
  dev_err(dev, "could not get regmap from parent\n");
  return PTR_ERR(afe->regmap);
 }

 mutex_init(&afe->irq_alloc_lock);


 afe->memif_size = MT2701_MEMIF_NUM;
 afe->memif = devm_kcalloc(dev, afe->memif_size, sizeof(*afe->memif),
      GFP_KERNEL);
 if (!afe->memif)
  return -ENOMEM;

 for (i = 0; i < afe->memif_size; i++) {
  afe->memif[i].data = &memif_data[i];
  afe->memif[i].irq_usage = -1;
 }


 afe->irqs_size = MT2701_IRQ_ASYS_END;
 afe->irqs = devm_kcalloc(dev, afe->irqs_size, sizeof(*afe->irqs),
     GFP_KERNEL);
 if (!afe->irqs)
  return -ENOMEM;

 for (i = 0; i < afe->irqs_size; i++)
  afe->irqs[i].irq_data = &irq_data[i];


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
 afe->reg_back_up_list_num = ARRAY_SIZE(mt2701_afe_backup_list);
 afe->runtime_resume = mt2701_afe_runtime_resume;
 afe->runtime_suspend = mt2701_afe_runtime_suspend;


 ret = mt2701_init_clock(afe);
 if (ret) {
  dev_err(dev, "init clock error\n");
  return ret;
 }

 platform_set_drvdata(pdev, afe);

 pm_runtime_enable(dev);
 if (!pm_runtime_enabled(dev)) {
  ret = mt2701_afe_runtime_resume(dev);
  if (ret)
   goto err_pm_disable;
 }
 pm_runtime_get_sync(dev);

 ret = devm_snd_soc_register_component(&pdev->dev, &mtk_afe_pcm_platform,
           ((void*)0), 0);
 if (ret) {
  dev_warn(dev, "err_platform\n");
  goto err_platform;
 }

 ret = devm_snd_soc_register_component(&pdev->dev,
      &mt2701_afe_pcm_dai_component,
      mt2701_afe_pcm_dais,
      ARRAY_SIZE(mt2701_afe_pcm_dais));
 if (ret) {
  dev_warn(dev, "err_dai_component\n");
  goto err_platform;
 }

 return 0;

err_platform:
 pm_runtime_put_sync(dev);
err_pm_disable:
 pm_runtime_disable(dev);

 return ret;
}
