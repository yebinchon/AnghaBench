
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dapm_widget_list {int dummy; } ;
struct snd_soc_dai {int dummy; } ;


 int dev_dbg (int ,char*,int,char*) ;
 int dpcm_end_walk_at_be ;
 int snd_soc_dapm_dai_get_connected_widgets (struct snd_soc_dai*,int,struct snd_soc_dapm_widget_list**,int ) ;

int dpcm_path_get(struct snd_soc_pcm_runtime *fe,
 int stream, struct snd_soc_dapm_widget_list **list)
{
 struct snd_soc_dai *cpu_dai = fe->cpu_dai;
 int paths;


 paths = snd_soc_dapm_dai_get_connected_widgets(cpu_dai, stream, list,
   dpcm_end_walk_at_be);

 dev_dbg(fe->dev, "ASoC: found %d audio %s paths\n", paths,
   stream ? "capture" : "playback");

 return paths;
}
