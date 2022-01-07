
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; struct snd_pcm_hw_constraint_ranges* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_pcm_hw_constraint_ranges {int mask; int ranges; int count; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_ranges (int ,int ,int ,int ) ;

__attribute__((used)) static int snd_pcm_hw_rule_ranges(struct snd_pcm_hw_params *params,
      struct snd_pcm_hw_rule *rule)
{
 struct snd_pcm_hw_constraint_ranges *r = rule->private;
 return snd_interval_ranges(hw_param_interval(params, rule->var),
       r->count, r->ranges, r->mask);
}
