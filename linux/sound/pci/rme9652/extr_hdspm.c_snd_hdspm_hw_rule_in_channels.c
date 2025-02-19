
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct hdspm* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;
struct hdspm {unsigned int qs_in_channels; unsigned int ds_in_channels; unsigned int ss_in_channels; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (struct snd_interval*,int,unsigned int*,int ) ;

__attribute__((used)) static int snd_hdspm_hw_rule_in_channels(struct snd_pcm_hw_params *params,
          struct snd_pcm_hw_rule *rule)
{
 unsigned int list[3];
 struct hdspm *hdspm = rule->private;
 struct snd_interval *c = hw_param_interval(params,
   SNDRV_PCM_HW_PARAM_CHANNELS);

 list[0] = hdspm->qs_in_channels;
 list[1] = hdspm->ds_in_channels;
 list[2] = hdspm->ss_in_channels;
 return snd_interval_list(c, 3, list, 0);
}
