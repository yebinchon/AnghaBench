
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct img_spdif_out {int dma_data; } ;


 int ARRAY_SIZE (int ) ;
 int img_spdif_out_controls ;
 int snd_soc_add_dai_controls (struct snd_soc_dai*,int ,int ) ;
 struct img_spdif_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int img_spdif_out_dai_probe(struct snd_soc_dai *dai)
{
 struct img_spdif_out *spdif = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, &spdif->dma_data, ((void*)0));

 snd_soc_add_dai_controls(dai, img_spdif_out_controls,
   ARRAY_SIZE(img_spdif_out_controls));

 return 0;
}
