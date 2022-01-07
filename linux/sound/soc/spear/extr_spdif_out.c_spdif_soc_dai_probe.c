
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * filter_data; } ;
struct spdif_out_dev {TYPE_1__ dma_params_tx; int dma_params; } ;
struct snd_soc_dai {TYPE_1__* playback_dma_data; } ;


 int ARRAY_SIZE (int ) ;
 int snd_soc_add_dai_controls (struct snd_soc_dai*,int ,int ) ;
 struct spdif_out_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spdif_out_controls ;

__attribute__((used)) static int spdif_soc_dai_probe(struct snd_soc_dai *dai)
{
 struct spdif_out_dev *host = snd_soc_dai_get_drvdata(dai);

 host->dma_params_tx.filter_data = &host->dma_params;
 dai->playback_dma_data = &host->dma_params_tx;

 return snd_soc_add_dai_controls(dai, spdif_out_controls,
    ARRAY_SIZE(spdif_out_controls));
}
