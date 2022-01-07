
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int rmask; int cmask; } ;
struct snd_pcm_hw_constraints {int dummy; } ;
struct snd_mask {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_hw_constraints hw_constraints; } ;


 int EINVAL ;
 unsigned int SNDRV_PCM_HW_PARAM_FIRST_MASK ;
 unsigned int SNDRV_PCM_HW_PARAM_LAST_MASK ;
 int constrs_mask (struct snd_pcm_hw_constraints*,unsigned int) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,unsigned int) ;
 scalar_t__ snd_mask_empty (struct snd_mask*) ;
 int snd_mask_refine (struct snd_mask*,int ) ;
 int trace_hw_mask_param (struct snd_pcm_substream*,unsigned int,int ,struct snd_mask*,struct snd_mask*) ;
 scalar_t__ trace_hw_mask_param_enabled () ;

__attribute__((used)) static int constrain_mask_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_pcm_hw_constraints *constrs =
     &substream->runtime->hw_constraints;
 struct snd_mask *m;
 unsigned int k;
 struct snd_mask old_mask;
 int changed;

 for (k = SNDRV_PCM_HW_PARAM_FIRST_MASK; k <= SNDRV_PCM_HW_PARAM_LAST_MASK; k++) {
  m = hw_param_mask(params, k);
  if (snd_mask_empty(m))
   return -EINVAL;


  if (!(params->rmask & (1 << k)))
   continue;

  if (trace_hw_mask_param_enabled())
   old_mask = *m;

  changed = snd_mask_refine(m, constrs_mask(constrs, k));
  if (changed < 0)
   return changed;
  if (changed == 0)
   continue;


  trace_hw_mask_param(substream, k, 0, &old_mask, m);
  params->cmask |= 1 << k;
 }

 return 0;
}
