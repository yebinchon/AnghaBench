
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_pcm {int dummy; } ;
struct snd_soc_dai_driver {int * ops; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int skl_pcm_dai_ops ;

int skl_dai_load(struct snd_soc_component *cmp, int index,
   struct snd_soc_dai_driver *dai_drv,
   struct snd_soc_tplg_pcm *pcm, struct snd_soc_dai *dai)
{
 dai_drv->ops = &skl_pcm_dai_ops;

 return 0;
}
