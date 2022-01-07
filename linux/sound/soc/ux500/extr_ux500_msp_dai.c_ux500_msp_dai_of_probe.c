
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ux500_msp_i2s_drvdata {TYPE_3__* msp; } ;
struct snd_soc_dai {int dev; } ;
struct snd_dmaengine_dai_dma_data {int maxburst; int addr; } ;
struct TYPE_5__ {int tx_rx_addr; } ;
struct TYPE_4__ {int tx_rx_addr; } ;
struct TYPE_6__ {TYPE_2__ capture_dma_data; TYPE_1__ playback_dma_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ux500_msp_i2s_drvdata* dev_get_drvdata (int ) ;
 struct snd_dmaengine_dai_dma_data* devm_kzalloc (int ,int,int ) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,struct snd_dmaengine_dai_dma_data*,struct snd_dmaengine_dai_dma_data*) ;

__attribute__((used)) static int ux500_msp_dai_of_probe(struct snd_soc_dai *dai)
{
 struct ux500_msp_i2s_drvdata *drvdata = dev_get_drvdata(dai->dev);
 struct snd_dmaengine_dai_dma_data *playback_dma_data;
 struct snd_dmaengine_dai_dma_data *capture_dma_data;

 playback_dma_data = devm_kzalloc(dai->dev,
      sizeof(*playback_dma_data),
      GFP_KERNEL);
 if (!playback_dma_data)
  return -ENOMEM;

 capture_dma_data = devm_kzalloc(dai->dev,
     sizeof(*capture_dma_data),
     GFP_KERNEL);
 if (!capture_dma_data)
  return -ENOMEM;

 playback_dma_data->addr = drvdata->msp->playback_dma_data.tx_rx_addr;
 capture_dma_data->addr = drvdata->msp->capture_dma_data.tx_rx_addr;

 playback_dma_data->maxburst = 4;
 capture_dma_data->maxburst = 4;

 snd_soc_dai_init_dma_data(dai, playback_dma_data, capture_dma_data);

 return 0;
}
