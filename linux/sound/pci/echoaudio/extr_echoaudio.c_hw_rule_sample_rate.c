
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct echoaudio* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int max; int min; } ;
struct echoaudio {int sample_rate; int can_set_rate; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_any (struct snd_interval*) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int hw_rule_sample_rate(struct snd_pcm_hw_params *params,
          struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *rate = hw_param_interval(params,
            SNDRV_PCM_HW_PARAM_RATE);
 struct echoaudio *chip = rule->private;
 struct snd_interval fixed;

 if (!chip->can_set_rate) {
  snd_interval_any(&fixed);
  fixed.min = fixed.max = chip->sample_rate;
  return snd_interval_refine(rate, &fixed);
 }
 return 0;
}
