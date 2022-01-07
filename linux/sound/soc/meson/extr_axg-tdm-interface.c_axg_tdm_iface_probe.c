
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct axg_tdm_iface {int * mclk; int * lrclk; int * sclk; } ;


 int ARRAY_SIZE (int *) ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int axg_tdm_iface_component_drv ;
 int * axg_tdm_iface_dai_drv ;
 int dev_err (struct device*,char*,int) ;
 void* devm_clk_get (struct device*,char*) ;
 struct snd_soc_dai_driver* devm_kcalloc (struct device*,int,int,int ) ;
 struct axg_tdm_iface* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,struct snd_soc_dai_driver*,int) ;
 int memcpy (struct snd_soc_dai_driver*,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct axg_tdm_iface*) ;

__attribute__((used)) static int axg_tdm_iface_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct snd_soc_dai_driver *dai_drv;
 struct axg_tdm_iface *iface;
 int ret, i;

 iface = devm_kzalloc(dev, sizeof(*iface), GFP_KERNEL);
 if (!iface)
  return -ENOMEM;
 platform_set_drvdata(pdev, iface);






 dai_drv = devm_kcalloc(dev, ARRAY_SIZE(axg_tdm_iface_dai_drv),
          sizeof(*dai_drv), GFP_KERNEL);
 if (!dai_drv)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(axg_tdm_iface_dai_drv); i++)
  memcpy(&dai_drv[i], &axg_tdm_iface_dai_drv[i],
         sizeof(*dai_drv));


 iface->sclk = devm_clk_get(dev, "sclk");
 if (IS_ERR(iface->sclk)) {
  ret = PTR_ERR(iface->sclk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to get sclk: %d\n", ret);
  return ret;
 }


 iface->lrclk = devm_clk_get(dev, "lrclk");
 if (IS_ERR(iface->lrclk)) {
  ret = PTR_ERR(iface->lrclk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to get lrclk: %d\n", ret);
  return ret;
 }







 iface->mclk = devm_clk_get(dev, "mclk");
 if (IS_ERR(iface->mclk)) {
  ret = PTR_ERR(iface->mclk);
  if (ret == -ENOENT) {
   iface->mclk = ((void*)0);
  } else {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "failed to get mclk: %d\n", ret);
   return ret;
  }
 }

 return devm_snd_soc_register_component(dev,
     &axg_tdm_iface_component_drv, dai_drv,
     ARRAY_SIZE(axg_tdm_iface_dai_drv));
}
