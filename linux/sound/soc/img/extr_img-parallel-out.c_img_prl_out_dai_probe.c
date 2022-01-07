
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct img_prl_out {int dma_data; } ;


 struct img_prl_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int img_prl_out_dai_probe(struct snd_soc_dai *dai)
{
 struct img_prl_out *prl = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, &prl->dma_data, ((void*)0));

 return 0;
}
