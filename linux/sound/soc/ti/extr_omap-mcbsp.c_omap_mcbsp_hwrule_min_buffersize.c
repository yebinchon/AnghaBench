
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_hw_rule {struct omap_mcbsp* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int integer; } ;
struct omap_mcbsp {TYPE_1__* pdata; } ;
struct TYPE_2__ {int buffer_size; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_any (struct snd_interval*) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int omap_mcbsp_hwrule_min_buffersize(struct snd_pcm_hw_params *params,
        struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *buffer_size = hw_param_interval(params,
     SNDRV_PCM_HW_PARAM_BUFFER_SIZE);
 struct snd_interval *channels = hw_param_interval(params,
     SNDRV_PCM_HW_PARAM_CHANNELS);
 struct omap_mcbsp *mcbsp = rule->private;
 struct snd_interval frames;
 int size;

 snd_interval_any(&frames);
 size = mcbsp->pdata->buffer_size;

 frames.min = size / channels->min;
 frames.integer = 1;
 return snd_interval_refine(buffer_size, &frames);
}
