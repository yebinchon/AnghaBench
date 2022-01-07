
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lpass_variant {int dummy; } ;
struct lpass_data {scalar_t__ lpaif_irq; int lpaif_map; struct lpass_variant* variant; } ;


 int ENODEV ;
 int IRQF_TRIGGER_RISING ;
 int LPAIF_IRQEN_REG (struct lpass_variant*,int ) ;
 int LPAIF_IRQ_PORT_HOST ;
 int dev_err (int *,char*,int) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,char*,struct lpass_data*) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int lpass_component_driver ;
 int lpass_platform_lpaif_irq ;
 struct lpass_data* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ platform_get_irq_byname (struct platform_device*,char*) ;
 int regmap_write (int ,int ,int ) ;

int asoc_qcom_lpass_platform_register(struct platform_device *pdev)
{
 struct lpass_data *drvdata = platform_get_drvdata(pdev);
 struct lpass_variant *v = drvdata->variant;
 int ret;

 drvdata->lpaif_irq = platform_get_irq_byname(pdev, "lpass-irq-lpaif");
 if (drvdata->lpaif_irq < 0)
  return -ENODEV;


 ret = regmap_write(drvdata->lpaif_map,
   LPAIF_IRQEN_REG(v, LPAIF_IRQ_PORT_HOST), 0);
 if (ret) {
  dev_err(&pdev->dev, "error writing to irqen reg: %d\n", ret);
  return ret;
 }

 ret = devm_request_irq(&pdev->dev, drvdata->lpaif_irq,
   lpass_platform_lpaif_irq, IRQF_TRIGGER_RISING,
   "lpass-irq-lpaif", drvdata);
 if (ret) {
  dev_err(&pdev->dev, "irq request failed: %d\n", ret);
  return ret;
 }


 return devm_snd_soc_register_component(&pdev->dev,
   &lpass_component_driver, ((void*)0), 0);
}
