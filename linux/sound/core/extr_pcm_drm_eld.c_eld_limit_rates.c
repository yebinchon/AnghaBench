
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_pcm_hw_rule {unsigned int* private; int var; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int min; } ;


 int ARRAY_SIZE (int ) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 unsigned int* drm_eld_sad (unsigned int const*) ;
 unsigned int drm_eld_sad_count (unsigned int const*) ;
 int eld_rates ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 unsigned int sad_max_channels (unsigned int const*) ;
 int snd_interval_list (struct snd_interval*,int ,int ,unsigned int) ;

__attribute__((used)) static int eld_limit_rates(struct snd_pcm_hw_params *params,
      struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *r = hw_param_interval(params, rule->var);
 const struct snd_interval *c;
 unsigned int rate_mask = 7, i;
 const u8 *sad, *eld = rule->private;

 sad = drm_eld_sad(eld);
 if (sad) {
  c = hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_CHANNELS);

  for (i = drm_eld_sad_count(eld); i > 0; i--, sad += 3) {
   unsigned max_channels = sad_max_channels(sad);





   if (c->min <= max_channels)
    rate_mask |= sad[1];
  }
 }

 return snd_interval_list(r, ARRAY_SIZE(eld_rates), eld_rates,
     rate_mask);
}
