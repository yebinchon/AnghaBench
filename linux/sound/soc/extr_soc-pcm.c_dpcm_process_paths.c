
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_dapm_widget_list {int dummy; } ;


 int dpcm_add_paths (struct snd_soc_pcm_runtime*,int,struct snd_soc_dapm_widget_list**) ;
 int dpcm_prune_paths (struct snd_soc_pcm_runtime*,int,struct snd_soc_dapm_widget_list**) ;

int dpcm_process_paths(struct snd_soc_pcm_runtime *fe,
 int stream, struct snd_soc_dapm_widget_list **list, int new)
{
 if (new)
  return dpcm_add_paths(fe, stream, list);
 else
  return dpcm_prune_paths(fe, stream, list);
}
