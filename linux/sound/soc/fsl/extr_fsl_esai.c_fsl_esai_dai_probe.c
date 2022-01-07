
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct fsl_esai {int dma_params_rx; int dma_params_tx; } ;


 struct fsl_esai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int fsl_esai_dai_probe(struct snd_soc_dai *dai)
{
 struct fsl_esai *esai_priv = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, &esai_priv->dma_params_tx,
      &esai_priv->dma_params_rx);

 return 0;
}
