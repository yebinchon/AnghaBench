
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {scalar_t__ rmask; } ;
struct snd_mask {int dummy; } ;
typedef int snd_pcm_hw_param_t ;


 int _snd_pcm_hw_param_mask (struct snd_pcm_hw_params*,int ,struct snd_mask const*) ;
 int snd_pcm_hw_refine (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int snd_pcm_hw_param_mask(struct snd_pcm_substream *pcm,
     struct snd_pcm_hw_params *params,
     snd_pcm_hw_param_t var,
     const struct snd_mask *val)
{
 int changed = _snd_pcm_hw_param_mask(params, var, val);
 if (changed < 0)
  return changed;
 if (params->rmask) {
  int err = snd_pcm_hw_refine(pcm, params);
  if (err < 0)
   return err;
 }
 return 0;
}
