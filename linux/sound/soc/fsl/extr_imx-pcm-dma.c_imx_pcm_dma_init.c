
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SND_DMAENGINE_PCM_FLAG_COMPAT ;
 struct snd_dmaengine_pcm_config* devm_kzalloc (int *,int,int ) ;
 int devm_snd_dmaengine_pcm_register (int *,struct snd_dmaengine_pcm_config*,int ) ;
 struct snd_dmaengine_pcm_config imx_dmaengine_pcm_config ;

int imx_pcm_dma_init(struct platform_device *pdev, size_t size)
{
 struct snd_dmaengine_pcm_config *config;

 config = devm_kzalloc(&pdev->dev,
   sizeof(struct snd_dmaengine_pcm_config), GFP_KERNEL);
 if (!config)
  return -ENOMEM;
 *config = imx_dmaengine_pcm_config;

 return devm_snd_dmaengine_pcm_register(&pdev->dev,
  config,
  SND_DMAENGINE_PCM_FLAG_COMPAT);
}
