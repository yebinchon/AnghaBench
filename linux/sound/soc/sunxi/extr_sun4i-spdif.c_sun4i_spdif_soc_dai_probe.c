
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_dev {int dma_params_tx; } ;
struct snd_soc_dai {int dummy; } ;


 struct sun4i_spdif_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int sun4i_spdif_soc_dai_probe(struct snd_soc_dai *dai)
{
 struct sun4i_spdif_dev *host = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, &host->dma_params_tx, ((void*)0));
 return 0;
}
