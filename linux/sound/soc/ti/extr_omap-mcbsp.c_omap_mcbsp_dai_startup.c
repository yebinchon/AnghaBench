
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {scalar_t__ stream; int runtime; } ;
struct omap_mcbsp {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ buffer_size; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int omap_mcbsp_hwrule_min_buffersize ;
 int omap_mcbsp_request (struct omap_mcbsp*) ;
 int snd_pcm_hw_constraint_step (int ,int ,int ,int) ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,struct omap_mcbsp*,int ,int) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcbsp_dai_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *cpu_dai)
{
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);
 int err = 0;

 if (!cpu_dai->active)
  err = omap_mcbsp_request(mcbsp);
 if (mcbsp->pdata->buffer_size) {





  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   snd_pcm_hw_rule_add(substream->runtime, 0,
         SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
         omap_mcbsp_hwrule_min_buffersize,
         mcbsp,
         SNDRV_PCM_HW_PARAM_CHANNELS, -1);


  snd_pcm_hw_constraint_step(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 2);
 }

 return err;
}
