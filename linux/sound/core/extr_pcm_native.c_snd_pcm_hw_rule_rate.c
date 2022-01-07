
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_hw_rule {int var; struct snd_pcm_hardware* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_pcm_hardware {int rates; } ;
struct TYPE_2__ {int list; int count; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (int ,int ,int ,int ) ;
 TYPE_1__ snd_pcm_known_rates ;

__attribute__((used)) static int snd_pcm_hw_rule_rate(struct snd_pcm_hw_params *params,
    struct snd_pcm_hw_rule *rule)
{
 struct snd_pcm_hardware *hw = rule->private;
 return snd_interval_list(hw_param_interval(params, rule->var),
     snd_pcm_known_rates.count,
     snd_pcm_known_rates.list, hw->rates);
}
