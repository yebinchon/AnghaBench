
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_rule {int cond; size_t* deps; int var; int (* func ) (struct snd_pcm_hw_params*,struct snd_pcm_hw_rule*) ;} ;
struct snd_pcm_hw_params {int rmask; int flags; int cmask; } ;
struct snd_pcm_hw_constraints {unsigned int rules_num; struct snd_pcm_hw_rule* rules; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_hw_constraints hw_constraints; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_LAST_INTERVAL ;
 scalar_t__ hw_is_interval (int) ;
 scalar_t__ hw_is_mask (int) ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int) ;
 unsigned int* kcalloc (unsigned int,int,int ) ;
 int kfree (unsigned int*) ;
 int stub1 (struct snd_pcm_hw_params*,struct snd_pcm_hw_rule*) ;
 int trace_hw_interval_param (struct snd_pcm_substream*,int,unsigned int,struct snd_interval*,struct snd_interval*) ;
 scalar_t__ trace_hw_interval_param_enabled () ;
 int trace_hw_mask_param (struct snd_pcm_substream*,int,unsigned int,struct snd_mask*,struct snd_mask*) ;
 scalar_t__ trace_hw_mask_param_enabled () ;

__attribute__((used)) static int constrain_params_by_rules(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 struct snd_pcm_hw_constraints *constrs =
     &substream->runtime->hw_constraints;
 unsigned int k;
 unsigned int *rstamps;
 unsigned int vstamps[SNDRV_PCM_HW_PARAM_LAST_INTERVAL + 1];
 unsigned int stamp;
 struct snd_pcm_hw_rule *r;
 unsigned int d;
 struct snd_mask old_mask;
 struct snd_interval old_interval;
 bool again;
 int changed, err = 0;







 rstamps = kcalloc(constrs->rules_num, sizeof(unsigned int), GFP_KERNEL);
 if (!rstamps)
  return -ENOMEM;
 for (k = 0; k <= SNDRV_PCM_HW_PARAM_LAST_INTERVAL; k++)
  vstamps[k] = (params->rmask & (1 << k)) ? 1 : 0;


 stamp = 2;
retry:

 again = 0;
 for (k = 0; k < constrs->rules_num; k++) {
  r = &constrs->rules[k];







  if (r->cond && !(r->cond & params->flags))
   continue;
  for (d = 0; r->deps[d] >= 0; d++) {
   if (vstamps[r->deps[d]] > rstamps[k])
    break;
  }
  if (r->deps[d] < 0)
   continue;

  if (trace_hw_mask_param_enabled()) {
   if (hw_is_mask(r->var))
    old_mask = *hw_param_mask(params, r->var);
  }
  if (trace_hw_interval_param_enabled()) {
   if (hw_is_interval(r->var))
    old_interval = *hw_param_interval(params, r->var);
  }

  changed = r->func(params, r);
  if (changed < 0) {
   err = changed;
   goto out;
  }






  if (changed && r->var >= 0) {
   if (hw_is_mask(r->var)) {
    trace_hw_mask_param(substream, r->var,
     k + 1, &old_mask,
     hw_param_mask(params, r->var));
   }
   if (hw_is_interval(r->var)) {
    trace_hw_interval_param(substream, r->var,
     k + 1, &old_interval,
     hw_param_interval(params, r->var));
   }

   params->cmask |= (1 << r->var);
   vstamps[r->var] = stamp;
   again = 1;
  }

  rstamps[k] = stamp++;
 }


 if (again)
  goto retry;

 out:
 kfree(rstamps);
 return err;
}
