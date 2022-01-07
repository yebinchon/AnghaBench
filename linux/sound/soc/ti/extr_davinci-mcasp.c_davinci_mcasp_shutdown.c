
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {size_t stream; } ;
struct davinci_mcasp {scalar_t__ op_mode; scalar_t__ max_format_width; scalar_t__ channels; scalar_t__* active_serializers; int ** substreams; } ;


 scalar_t__ DAVINCI_MCASP_DIT_MODE ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void davinci_mcasp_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *cpu_dai)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(cpu_dai);

 mcasp->substreams[substream->stream] = ((void*)0);
 mcasp->active_serializers[substream->stream] = 0;

 if (mcasp->op_mode == DAVINCI_MCASP_DIT_MODE)
  return;

 if (!cpu_dai->active) {
  mcasp->channels = 0;
  mcasp->max_format_width = 0;
 }
}
