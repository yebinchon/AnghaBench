
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int max; int min; int member_0; } ;


 int CIP_SFC_COUNT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int * amdtp_rate_table ;
 int * amdtp_syt_intervals ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 unsigned int max (unsigned int,int ) ;
 int rounddown (int ,unsigned int) ;
 int roundup (int ,unsigned int) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 scalar_t__ snd_interval_test (struct snd_interval const*,int ) ;

__attribute__((used)) static int apply_constraint_to_size(struct snd_pcm_hw_params *params,
        struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *s = hw_param_interval(params, rule->var);
 const struct snd_interval *r =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval t = {0};
 unsigned int step = 0;
 int i;

 for (i = 0; i < CIP_SFC_COUNT; ++i) {
  if (snd_interval_test(r, amdtp_rate_table[i]))
   step = max(step, amdtp_syt_intervals[i]);
 }

 t.min = roundup(s->min, step);
 t.max = rounddown(s->max, step);
 t.integer = 1;

 return snd_interval_refine(s, &t);
}
