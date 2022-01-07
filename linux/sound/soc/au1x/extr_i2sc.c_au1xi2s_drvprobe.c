
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct au1xpsc_audio_data {int * dmaids; int mmio; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_DMA ;
 int IORESOURCE_MEM ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int au1xi2s_component ;
 int au1xi2s_dai_driver ;
 int devm_ioremap_nocache (int *,int ,int ) ;
 struct au1xpsc_audio_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct au1xpsc_audio_data*) ;
 int resource_size (struct resource*) ;
 int snd_soc_register_component (int *,int *,int *,int) ;

__attribute__((used)) static int au1xi2s_drvprobe(struct platform_device *pdev)
{
 struct resource *iores, *dmares;
 struct au1xpsc_audio_data *ctx;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!iores)
  return -ENODEV;

 if (!devm_request_mem_region(&pdev->dev, iores->start,
         resource_size(iores),
         pdev->name))
  return -EBUSY;

 ctx->mmio = devm_ioremap_nocache(&pdev->dev, iores->start,
      resource_size(iores));
 if (!ctx->mmio)
  return -EBUSY;

 dmares = platform_get_resource(pdev, IORESOURCE_DMA, 0);
 if (!dmares)
  return -EBUSY;
 ctx->dmaids[SNDRV_PCM_STREAM_PLAYBACK] = dmares->start;

 dmares = platform_get_resource(pdev, IORESOURCE_DMA, 1);
 if (!dmares)
  return -EBUSY;
 ctx->dmaids[SNDRV_PCM_STREAM_CAPTURE] = dmares->start;

 platform_set_drvdata(pdev, ctx);

 return snd_soc_register_component(&pdev->dev, &au1xi2s_component,
       &au1xi2s_dai_driver, 1);
}
