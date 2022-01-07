
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct omap_mcpdm {int * dma_data; TYPE_1__* config; int dev; int irq; } ;
struct TYPE_2__ {int threshold; } ;


 int MCPDM_REG_CTRL ;
 int MCPDM_UP_THRES_MAX ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*) ;
 int omap_mcpdm_irq_handler ;
 int omap_mcpdm_write (struct omap_mcpdm*,int ,int) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int request_irq (int ,int ,int ,char*,void*) ;
 struct omap_mcpdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int omap_mcpdm_probe(struct snd_soc_dai *dai)
{
 struct omap_mcpdm *mcpdm = snd_soc_dai_get_drvdata(dai);
 int ret;

 pm_runtime_enable(mcpdm->dev);


 pm_runtime_get_sync(mcpdm->dev);
 omap_mcpdm_write(mcpdm, MCPDM_REG_CTRL, 0x00);

 ret = request_irq(mcpdm->irq, omap_mcpdm_irq_handler, 0, "McPDM",
     (void *)mcpdm);

 pm_runtime_put_sync(mcpdm->dev);

 if (ret) {
  dev_err(mcpdm->dev, "Request for IRQ failed\n");
  pm_runtime_disable(mcpdm->dev);
 }


 mcpdm->config[SNDRV_PCM_STREAM_PLAYBACK].threshold = 2;
 mcpdm->config[SNDRV_PCM_STREAM_CAPTURE].threshold =
       MCPDM_UP_THRES_MAX - 3;

 snd_soc_dai_init_dma_data(dai,
      &mcpdm->dma_data[SNDRV_PCM_STREAM_PLAYBACK],
      &mcpdm->dma_data[SNDRV_PCM_STREAM_CAPTURE]);

 return ret;
}
