
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct davinci_vc* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct davinci_vcif_dev {TYPE_1__* dma_data; struct davinci_vc* davinci_vc; } ;
struct TYPE_9__ {int dma_rx_addr; int dma_rx_channel; int dma_tx_addr; int dma_tx_channel; } ;
struct davinci_vc {TYPE_2__ davinci_vcif; } ;
struct TYPE_8__ {int addr; int * filter_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int davinci_vcif_component ;
 int davinci_vcif_dai ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_set_drvdata (TYPE_3__*,struct davinci_vcif_dev*) ;
 struct davinci_vcif_dev* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_3__*,int *,int *,int) ;
 int edma_pcm_platform_register (TYPE_3__*) ;

__attribute__((used)) static int davinci_vcif_probe(struct platform_device *pdev)
{
 struct davinci_vc *davinci_vc = pdev->dev.platform_data;
 struct davinci_vcif_dev *davinci_vcif_dev;
 int ret;

 davinci_vcif_dev = devm_kzalloc(&pdev->dev,
     sizeof(struct davinci_vcif_dev),
     GFP_KERNEL);
 if (!davinci_vcif_dev)
  return -ENOMEM;


 davinci_vcif_dev->davinci_vc = davinci_vc;
 davinci_vcif_dev->dma_data[SNDRV_PCM_STREAM_PLAYBACK].filter_data =
    &davinci_vc->davinci_vcif.dma_tx_channel;
 davinci_vcif_dev->dma_data[SNDRV_PCM_STREAM_PLAYBACK].addr =
    davinci_vc->davinci_vcif.dma_tx_addr;


 davinci_vcif_dev->dma_data[SNDRV_PCM_STREAM_CAPTURE].filter_data =
    &davinci_vc->davinci_vcif.dma_rx_channel;
 davinci_vcif_dev->dma_data[SNDRV_PCM_STREAM_CAPTURE].addr =
    davinci_vc->davinci_vcif.dma_rx_addr;

 dev_set_drvdata(&pdev->dev, davinci_vcif_dev);

 ret = devm_snd_soc_register_component(&pdev->dev,
           &davinci_vcif_component,
           &davinci_vcif_dai, 1);
 if (ret != 0) {
  dev_err(&pdev->dev, "could not register dai\n");
  return ret;
 }

 ret = edma_pcm_platform_register(&pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "register PCM failed: %d\n", ret);
  return ret;
 }

 return 0;
}
