
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int ak4458_rate_constraints ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;

__attribute__((used)) static int ak4458_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 int ret;

 ret = snd_pcm_hw_constraint_list(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_RATE,
      &ak4458_rate_constraints);

 return ret;
}
