
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {scalar_t__ private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (struct snd_interval*,int,unsigned int*,int ) ;

__attribute__((used)) static int snd_pcm_hw_rule_noresample_func(struct snd_pcm_hw_params *params,
        struct snd_pcm_hw_rule *rule)
{
 unsigned int base_rate = (unsigned int)(uintptr_t)rule->private;
 struct snd_interval *rate;

 rate = hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 return snd_interval_list(rate, 1, &base_rate, 0);
}
