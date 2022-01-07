
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct jz_icdc {int clk; int regmap; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 struct jz_icdc* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_regmap_init (struct device*,int *,struct jz_icdc*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int jz4725b_codec ;
 int jz4725b_codec_dai ;
 int jz4725b_codec_regmap_config ;
 int platform_set_drvdata (struct platform_device*,struct jz_icdc*) ;

__attribute__((used)) static int jz4725b_codec_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct jz_icdc *icdc;
 int ret;

 icdc = devm_kzalloc(dev, sizeof(*icdc), GFP_KERNEL);
 if (!icdc)
  return -ENOMEM;

 icdc->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(icdc->base))
  return PTR_ERR(icdc->base);

 icdc->regmap = devm_regmap_init(dev, ((void*)0), icdc,
     &jz4725b_codec_regmap_config);
 if (IS_ERR(icdc->regmap))
  return PTR_ERR(icdc->regmap);

 icdc->clk = devm_clk_get(&pdev->dev, "aic");
 if (IS_ERR(icdc->clk))
  return PTR_ERR(icdc->clk);

 platform_set_drvdata(pdev, icdc);

 ret = devm_snd_soc_register_component(dev, &jz4725b_codec,
           &jz4725b_codec_dai, 1);
 if (ret)
  dev_err(dev, "Failed to register codec\n");

 return ret;
}
