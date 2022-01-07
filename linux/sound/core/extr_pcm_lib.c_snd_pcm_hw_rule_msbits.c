
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {scalar_t__ private; } ;
struct snd_pcm_hw_params {int msbits; } ;
struct snd_interval {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int min_not_zero (int ,unsigned int) ;
 int snd_interval_single (struct snd_interval const*) ;
 unsigned int snd_interval_value (struct snd_interval const*) ;

__attribute__((used)) static int snd_pcm_hw_rule_msbits(struct snd_pcm_hw_params *params,
      struct snd_pcm_hw_rule *rule)
{
 unsigned int l = (unsigned long) rule->private;
 int width = l & 0xffff;
 unsigned int msbits = l >> 16;
 const struct snd_interval *i =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS);

 if (!snd_interval_single(i))
  return 0;

 if ((snd_interval_value(i) == width) ||
     (width == 0 && snd_interval_value(i) > msbits))
  params->msbits = min_not_zero(params->msbits, msbits);

 return 0;
}
