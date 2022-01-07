
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct hdspm* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; int integer; } ;
struct hdspm {int qs_in_channels; int ds_in_channels; int ss_in_channels; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int snd_hdspm_hw_rule_in_channels_rate(struct snd_pcm_hw_params *params,
        struct snd_pcm_hw_rule *rule)
{
 struct hdspm *hdspm = rule->private;
 struct snd_interval *c =
     hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval *r =
     hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);

 if (r->min > 96000 && r->max <= 192000) {
  struct snd_interval t = {
   .min = hdspm->qs_in_channels,
   .max = hdspm->qs_in_channels,
   .integer = 1,
  };
  return snd_interval_refine(c, &t);
 } else if (r->min > 48000 && r->max <= 96000) {
  struct snd_interval t = {
   .min = hdspm->ds_in_channels,
   .max = hdspm->ds_in_channels,
   .integer = 1,
  };
  return snd_interval_refine(c, &t);
 } else if (r->max < 64000) {
  struct snd_interval t = {
   .min = hdspm->ss_in_channels,
   .max = hdspm->ss_in_channels,
   .integer = 1,
  };
  return snd_interval_refine(c, &t);
 }

 return 0;
}
