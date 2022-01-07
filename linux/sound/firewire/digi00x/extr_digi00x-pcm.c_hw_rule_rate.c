
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int max; int min; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 unsigned int SND_DG00X_RATE_COUNT ;
 int UINT_MAX ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int * snd_dg00x_stream_pcm_channels ;
 int * snd_dg00x_stream_rates ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_interval_test (struct snd_interval const*,int ) ;

__attribute__((used)) static int hw_rule_rate(struct snd_pcm_hw_params *params,
   struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *r =
  hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 const struct snd_interval *c =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval t = {
  .min = UINT_MAX, .max = 0, .integer = 1,
 };
 unsigned int i;

 for (i = 0; i < SND_DG00X_RATE_COUNT; i++) {
  if (!snd_interval_test(c,
           snd_dg00x_stream_pcm_channels[i]))
   continue;

  t.min = min(t.min, snd_dg00x_stream_rates[i]);
  t.max = max(t.max, snd_dg00x_stream_rates[i]);
 }

 return snd_interval_refine(r, &t);
}
