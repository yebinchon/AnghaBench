
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {scalar_t__ rmask; } ;
typedef int snd_pcm_hw_param_t ;


 int _snd_pcm_hw_param_first (struct snd_pcm_hw_params*,int ) ;
 int snd_pcm_hw_param_value (struct snd_pcm_hw_params*,int ,int*) ;
 int snd_pcm_hw_refine (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;

int snd_pcm_hw_param_first(struct snd_pcm_substream *pcm,
      struct snd_pcm_hw_params *params,
      snd_pcm_hw_param_t var, int *dir)
{
 int changed = _snd_pcm_hw_param_first(params, var);
 if (changed < 0)
  return changed;
 if (params->rmask) {
  int err = snd_pcm_hw_refine(pcm, params);
  if (err < 0)
   return err;
 }
 return snd_pcm_hw_param_value(params, var, dir);
}
