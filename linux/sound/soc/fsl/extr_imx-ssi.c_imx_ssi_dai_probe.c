
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct snd_soc_dai {TYPE_2__* capture_dma_data; TYPE_1__* playback_dma_data; int dev; } ;
struct TYPE_4__ {int maxburst; } ;
struct TYPE_3__ {int maxburst; } ;
struct imx_ssi {TYPE_2__ dma_params_rx; TYPE_1__ dma_params_tx; scalar_t__ base; } ;


 scalar_t__ SSI_SFCSR ;
 int SSI_SFCSR_RFWM0 (int ) ;
 int SSI_SFCSR_TFWM0 (int ) ;
 struct imx_ssi* dev_get_drvdata (int ) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct imx_ssi*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imx_ssi_dai_probe(struct snd_soc_dai *dai)
{
 struct imx_ssi *ssi = dev_get_drvdata(dai->dev);
 uint32_t val;

 snd_soc_dai_set_drvdata(dai, ssi);

 val = SSI_SFCSR_TFWM0(ssi->dma_params_tx.maxburst) |
  SSI_SFCSR_RFWM0(ssi->dma_params_rx.maxburst);
 writel(val, ssi->base + SSI_SFCSR);


 dai->playback_dma_data = &ssi->dma_params_tx;
 dai->capture_dma_data = &ssi->dma_params_rx;

 return 0;
}
