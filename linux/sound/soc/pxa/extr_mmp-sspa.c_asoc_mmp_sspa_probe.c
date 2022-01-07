
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sspa_priv {unsigned int dai_fmt; void* audio_clk; void* sysclk; TYPE_1__* sspa; int * dma_params; } ;
struct ssp_device {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {void* clk; void* mmio_base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_enable (void*) ;
 void* clk_get (int *,char*) ;
 int clk_put (void*) ;
 void* devm_clk_get (int *,int *) ;
 int * devm_kcalloc (int *,int,int,int ) ;
 void* devm_kzalloc (int *,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int mmp_sspa_component ;
 int mmp_sspa_dai ;
 int platform_set_drvdata (struct platform_device*,struct sspa_priv*) ;

__attribute__((used)) static int asoc_mmp_sspa_probe(struct platform_device *pdev)
{
 struct sspa_priv *priv;

 priv = devm_kzalloc(&pdev->dev,
    sizeof(struct sspa_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->sspa = devm_kzalloc(&pdev->dev,
    sizeof(struct ssp_device), GFP_KERNEL);
 if (priv->sspa == ((void*)0))
  return -ENOMEM;

 priv->dma_params = devm_kcalloc(&pdev->dev,
   2, sizeof(struct snd_dmaengine_dai_dma_data),
   GFP_KERNEL);
 if (priv->dma_params == ((void*)0))
  return -ENOMEM;

 priv->sspa->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->sspa->mmio_base))
  return PTR_ERR(priv->sspa->mmio_base);

 priv->sspa->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->sspa->clk))
  return PTR_ERR(priv->sspa->clk);

 priv->audio_clk = clk_get(((void*)0), "mmp-audio");
 if (IS_ERR(priv->audio_clk))
  return PTR_ERR(priv->audio_clk);

 priv->sysclk = clk_get(((void*)0), "mmp-sysclk");
 if (IS_ERR(priv->sysclk)) {
  clk_put(priv->audio_clk);
  return PTR_ERR(priv->sysclk);
 }
 clk_enable(priv->audio_clk);
 priv->dai_fmt = (unsigned int) -1;
 platform_set_drvdata(pdev, priv);

 return devm_snd_soc_register_component(&pdev->dev, &mmp_sspa_component,
            &mmp_sspa_dai, 1);
}
