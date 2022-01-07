
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int DMIC_CH (int ) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int dmic_constraints ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int skylake_dmic_fixup(struct snd_soc_pcm_runtime *rtd,
  struct snd_pcm_hw_params *params)
{
 struct snd_interval *channels = hw_param_interval(params,
    SNDRV_PCM_HW_PARAM_CHANNELS);

 if (params_channels(params) == 2 || DMIC_CH(dmic_constraints) == 2)
  channels->min = channels->max = 2;
 else
  channels->min = channels->max = 4;

 return 0;
}
