
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_spdif_info {int reg_base; int mapbase; int dai_clk; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct zx_spdif_info* devm_kzalloc (int *,int,int ) ;
 int devm_snd_dmaengine_pcm_register (int *,int *,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zx_spdif_info*) ;
 int zx_spdif_component ;
 int zx_spdif_dai ;
 int zx_spdif_dev_init (int ) ;

__attribute__((used)) static int zx_spdif_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct zx_spdif_info *zx_spdif;
 int ret;

 zx_spdif = devm_kzalloc(&pdev->dev, sizeof(*zx_spdif), GFP_KERNEL);
 if (!zx_spdif)
  return -ENOMEM;

 zx_spdif->dai_clk = devm_clk_get(&pdev->dev, "tx");
 if (IS_ERR(zx_spdif->dai_clk)) {
  dev_err(&pdev->dev, "Fail to get clk\n");
  return PTR_ERR(zx_spdif->dai_clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 zx_spdif->mapbase = res->start;
 zx_spdif->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(zx_spdif->reg_base)) {
  dev_err(&pdev->dev, "ioremap failed!\n");
  return PTR_ERR(zx_spdif->reg_base);
 }

 zx_spdif_dev_init(zx_spdif->reg_base);
 platform_set_drvdata(pdev, zx_spdif);

 ret = devm_snd_soc_register_component(&pdev->dev, &zx_spdif_component,
      &zx_spdif_dai, 1);
 if (ret) {
  dev_err(&pdev->dev, "Register DAI failed: %d\n", ret);
  return ret;
 }

 ret = devm_snd_dmaengine_pcm_register(&pdev->dev, ((void*)0), 0);
 if (ret)
  dev_err(&pdev->dev, "Register platform PCM failed: %d\n", ret);

 return ret;
}
