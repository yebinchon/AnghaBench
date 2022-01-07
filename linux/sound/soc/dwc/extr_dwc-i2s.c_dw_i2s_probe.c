
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct snd_soc_dai_driver {int resume; int suspend; int * ops; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {struct i2s_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct i2s_platform_data {int cap; int quirks; int i2s_clk_cfg; int i2s_reg_comp2; int i2s_reg_comp1; } ;
struct dw_i2s_dev {int capability; int quirks; int use_pio; int clk; int i2s_clk_cfg; int i2s_reg_comp2; int i2s_reg_comp1; TYPE_1__* dev; int i2s_base; } ;


 int DW_I2S_MASTER ;
 int DW_I2S_QUIRK_COMP_REG_OFFSET ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2S_COMP_PARAM_1 ;
 int I2S_COMP_PARAM_2 ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_set_drvdata (TYPE_1__*,struct dw_i2s_dev*) ;
 int devm_clk_get (TYPE_1__*,char const*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct dw_i2s_dev*) ;
 int devm_snd_dmaengine_pcm_register (TYPE_1__*,int *,int ) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,struct snd_soc_dai_driver*,int) ;
 int dw_configure_dai_by_dt (struct dw_i2s_dev*,struct snd_soc_dai_driver*,struct resource*) ;
 int dw_configure_dai_by_pd (struct dw_i2s_dev*,struct snd_soc_dai_driver*,struct resource*,struct i2s_platform_data const*) ;
 int dw_i2s_component ;
 int dw_i2s_dai_ops ;
 int dw_i2s_resume ;
 int dw_i2s_suspend ;
 int dw_pcm_register (struct platform_device*) ;
 int i2s_irq_handler ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (TYPE_1__*) ;

__attribute__((used)) static int dw_i2s_probe(struct platform_device *pdev)
{
 const struct i2s_platform_data *pdata = pdev->dev.platform_data;
 struct dw_i2s_dev *dev;
 struct resource *res;
 int ret, irq;
 struct snd_soc_dai_driver *dw_i2s_dai;
 const char *clk_id;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dw_i2s_dai = devm_kzalloc(&pdev->dev, sizeof(*dw_i2s_dai), GFP_KERNEL);
 if (!dw_i2s_dai)
  return -ENOMEM;

 dw_i2s_dai->ops = &dw_i2s_dai_ops;
 dw_i2s_dai->suspend = dw_i2s_suspend;
 dw_i2s_dai->resume = dw_i2s_resume;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dev->i2s_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dev->i2s_base))
  return PTR_ERR(dev->i2s_base);

 dev->dev = &pdev->dev;

 irq = platform_get_irq(pdev, 0);
 if (irq >= 0) {
  ret = devm_request_irq(&pdev->dev, irq, i2s_irq_handler, 0,
    pdev->name, dev);
  if (ret < 0) {
   dev_err(&pdev->dev, "failed to request irq\n");
   return ret;
  }
 }

 dev->i2s_reg_comp1 = I2S_COMP_PARAM_1;
 dev->i2s_reg_comp2 = I2S_COMP_PARAM_2;
 if (pdata) {
  dev->capability = pdata->cap;
  clk_id = ((void*)0);
  dev->quirks = pdata->quirks;
  if (dev->quirks & DW_I2S_QUIRK_COMP_REG_OFFSET) {
   dev->i2s_reg_comp1 = pdata->i2s_reg_comp1;
   dev->i2s_reg_comp2 = pdata->i2s_reg_comp2;
  }
  ret = dw_configure_dai_by_pd(dev, dw_i2s_dai, res, pdata);
 } else {
  clk_id = "i2sclk";
  ret = dw_configure_dai_by_dt(dev, dw_i2s_dai, res);
 }
 if (ret < 0)
  return ret;

 if (dev->capability & DW_I2S_MASTER) {
  if (pdata) {
   dev->i2s_clk_cfg = pdata->i2s_clk_cfg;
   if (!dev->i2s_clk_cfg) {
    dev_err(&pdev->dev, "no clock configure method\n");
    return -ENODEV;
   }
  }
  dev->clk = devm_clk_get(&pdev->dev, clk_id);

  if (IS_ERR(dev->clk))
   return PTR_ERR(dev->clk);

  ret = clk_prepare_enable(dev->clk);
  if (ret < 0)
   return ret;
 }

 dev_set_drvdata(&pdev->dev, dev);
 ret = devm_snd_soc_register_component(&pdev->dev, &dw_i2s_component,
      dw_i2s_dai, 1);
 if (ret != 0) {
  dev_err(&pdev->dev, "not able to register dai\n");
  goto err_clk_disable;
 }

 if (!pdata) {
  if (irq >= 0) {
   ret = dw_pcm_register(pdev);
   dev->use_pio = 1;
  } else {
   ret = devm_snd_dmaengine_pcm_register(&pdev->dev, ((void*)0),
     0);
   dev->use_pio = 0;
  }

  if (ret) {
   dev_err(&pdev->dev, "could not register pcm: %d\n",
     ret);
   goto err_clk_disable;
  }
 }

 pm_runtime_enable(&pdev->dev);
 return 0;

err_clk_disable:
 if (dev->capability & DW_I2S_MASTER)
  clk_disable_unprepare(dev->clk);
 return ret;
}
