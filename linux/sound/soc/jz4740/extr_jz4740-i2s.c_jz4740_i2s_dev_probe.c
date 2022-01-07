
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct jz4740_i2s {int version; void* clk_i2s; void* clk_aic; int phys_base; void* base; } ;
typedef enum jz47xx_i2s_version { ____Placeholder_jz47xx_i2s_version } jz47xx_i2s_version ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ JZ_I2S_JZ4780 ;
 int PTR_ERR (void*) ;
 int SND_DMAENGINE_PCM_FLAG_COMPAT ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct jz4740_i2s* devm_kzalloc (int *,int,int ) ;
 int devm_snd_dmaengine_pcm_register (int *,int *,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int jz4740_i2s_component ;
 int jz4740_i2s_dai ;
 int jz4740_of_matches ;
 int jz4780_i2s_dai ;
 struct of_device_id* of_match_device (int ,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct jz4740_i2s*) ;

__attribute__((used)) static int jz4740_i2s_dev_probe(struct platform_device *pdev)
{
 struct jz4740_i2s *i2s;
 struct resource *mem;
 int ret;
 const struct of_device_id *match;

 i2s = devm_kzalloc(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
 if (!i2s)
  return -ENOMEM;

 match = of_match_device(jz4740_of_matches, &pdev->dev);
 if (match)
  i2s->version = (enum jz47xx_i2s_version)match->data;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2s->base = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(i2s->base))
  return PTR_ERR(i2s->base);

 i2s->phys_base = mem->start;

 i2s->clk_aic = devm_clk_get(&pdev->dev, "aic");
 if (IS_ERR(i2s->clk_aic))
  return PTR_ERR(i2s->clk_aic);

 i2s->clk_i2s = devm_clk_get(&pdev->dev, "i2s");
 if (IS_ERR(i2s->clk_i2s))
  return PTR_ERR(i2s->clk_i2s);

 platform_set_drvdata(pdev, i2s);

 if (i2s->version == JZ_I2S_JZ4780)
  ret = devm_snd_soc_register_component(&pdev->dev,
   &jz4740_i2s_component, &jz4780_i2s_dai, 1);
 else
  ret = devm_snd_soc_register_component(&pdev->dev,
   &jz4740_i2s_component, &jz4740_i2s_dai, 1);

 if (ret)
  return ret;

 return devm_snd_dmaengine_pcm_register(&pdev->dev, ((void*)0),
  SND_DMAENGINE_PCM_FLAG_COMPAT);
}
