
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; int name; } ;
struct ep93xx_ac97_info {int * dev; int done; int lock; int regs; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_set_drvdata (int *,struct ep93xx_ac97_info*) ;
 int devm_ep93xx_pcm_platform_register (int *) ;
 struct ep93xx_ac97_info* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct ep93xx_ac97_info*) ;
 int ep93xx_ac97_component ;
 int ep93xx_ac97_dai ;
 struct ep93xx_ac97_info* ep93xx_ac97_info ;
 int ep93xx_ac97_interrupt ;
 int ep93xx_ac97_ops ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ep93xx_ac97_info*) ;
 int snd_soc_register_component (int *,int *,int *,int) ;
 int snd_soc_set_ac97_ops (int *) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int ep93xx_ac97_probe(struct platform_device *pdev)
{
 struct ep93xx_ac97_info *info;
 int irq;
 int ret;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(info->regs))
  return PTR_ERR(info->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return irq < 0 ? irq : -ENODEV;

 ret = devm_request_irq(&pdev->dev, irq, ep93xx_ac97_interrupt,
          IRQF_TRIGGER_HIGH, pdev->name, info);
 if (ret)
  goto fail;

 dev_set_drvdata(&pdev->dev, info);

 mutex_init(&info->lock);
 init_completion(&info->done);
 info->dev = &pdev->dev;

 ep93xx_ac97_info = info;
 platform_set_drvdata(pdev, info);

 ret = snd_soc_set_ac97_ops(&ep93xx_ac97_ops);
 if (ret)
  goto fail;

 ret = snd_soc_register_component(&pdev->dev, &ep93xx_ac97_component,
      &ep93xx_ac97_dai, 1);
 if (ret)
  goto fail;

 ret = devm_ep93xx_pcm_platform_register(&pdev->dev);
 if (ret)
  goto fail_unregister;

 return 0;

fail_unregister:
 snd_soc_unregister_component(&pdev->dev);
fail:
 ep93xx_ac97_info = ((void*)0);
 snd_soc_set_ac97_ops(((void*)0));
 return ret;
}
