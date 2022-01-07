
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int openmin; } ;
typedef int snd_pcm_hw_param_t ;


 int EINVAL ;
 scalar_t__ hw_is_interval (int ) ;
 scalar_t__ hw_is_mask (int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params const*,int ) ;
 struct snd_mask* hw_param_mask_c (struct snd_pcm_hw_params const*,int ) ;
 int snd_interval_single (struct snd_interval const*) ;
 int snd_interval_value (struct snd_interval const*) ;
 int snd_mask_single (struct snd_mask const*) ;
 int snd_mask_value (struct snd_mask const*) ;

int snd_pcm_hw_param_value(const struct snd_pcm_hw_params *params,
      snd_pcm_hw_param_t var, int *dir)
{
 if (hw_is_mask(var)) {
  const struct snd_mask *mask = hw_param_mask_c(params, var);
  if (!snd_mask_single(mask))
   return -EINVAL;
  if (dir)
   *dir = 0;
  return snd_mask_value(mask);
 }
 if (hw_is_interval(var)) {
  const struct snd_interval *i = hw_param_interval_c(params, var);
  if (!snd_interval_single(i))
   return -EINVAL;
  if (dir)
   *dir = i->openmin;
  return snd_interval_value(i);
 }
 return -EINVAL;
}
