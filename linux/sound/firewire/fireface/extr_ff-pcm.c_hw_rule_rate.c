
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {unsigned int* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int max; int min; } ;
typedef enum snd_ff_stream_mode { ____Placeholder_snd_ff_stream_mode } snd_ff_stream_mode ;


 unsigned int ARRAY_SIZE (int *) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int UINT_MAX ;
 int * amdtp_rate_table ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int snd_ff_stream_get_multiplier_mode (unsigned int,int*) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_interval_test (struct snd_interval const*,unsigned int const) ;

__attribute__((used)) static int hw_rule_rate(struct snd_pcm_hw_params *params,
   struct snd_pcm_hw_rule *rule)
{
 const unsigned int *pcm_channels = rule->private;
 struct snd_interval *r =
  hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 const struct snd_interval *c =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval t = {
  .min = UINT_MAX, .max = 0, .integer = 1
 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(amdtp_rate_table); i++) {
  enum snd_ff_stream_mode mode;
  int err;

  err = snd_ff_stream_get_multiplier_mode(i, &mode);
  if (err < 0)
   continue;

  if (!snd_interval_test(c, pcm_channels[mode]))
   continue;

  t.min = min(t.min, amdtp_rate_table[i]);
  t.max = max(t.max, amdtp_rate_table[i]);
 }

 return snd_interval_refine(r, &t);
}
