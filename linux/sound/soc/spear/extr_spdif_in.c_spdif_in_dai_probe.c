
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * filter_data; } ;
struct spdif_in_dev {TYPE_1__ dma_params_rx; int dma_params; } ;
struct snd_soc_dai {TYPE_1__* capture_dma_data; } ;


 struct spdif_in_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int spdif_in_dai_probe(struct snd_soc_dai *dai)
{
 struct spdif_in_dev *host = snd_soc_dai_get_drvdata(dai);

 host->dma_params_rx.filter_data = &host->dma_params;
 dai->capture_dma_data = &host->dma_params_rx;

 return 0;
}
