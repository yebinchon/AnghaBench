
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct fsl_spdif_priv {int dma_params_rx; int dma_params_tx; } ;


 int ARRAY_SIZE (int ) ;
 int fsl_spdif_ctrls ;
 int snd_soc_add_dai_controls (struct snd_soc_dai*,int ,int ) ;
 struct fsl_spdif_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int fsl_spdif_dai_probe(struct snd_soc_dai *dai)
{
 struct fsl_spdif_priv *spdif_private = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, &spdif_private->dma_params_tx,
      &spdif_private->dma_params_rx);

 snd_soc_add_dai_controls(dai, fsl_spdif_ctrls, ARRAY_SIZE(fsl_spdif_ctrls));

 return 0;
}
