
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int dummy; } ;
 scalar_t__ hw_is_interval (int const) ;
 scalar_t__ hw_is_mask (int const) ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int const) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int const) ;
 int snd_pcm_hw_param_first (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int const,int *) ;
 int snd_pcm_hw_param_last (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int const,int *) ;
 int trace_hw_interval_param (struct snd_pcm_substream*,int const,int ,struct snd_interval*,struct snd_interval*) ;
 scalar_t__ trace_hw_interval_param_enabled () ;
 int trace_hw_mask_param (struct snd_pcm_substream*,int const,int ,struct snd_mask*,struct snd_mask*) ;
 scalar_t__ trace_hw_mask_param_enabled () ;

__attribute__((used)) static int snd_pcm_hw_params_choose(struct snd_pcm_substream *pcm,
        struct snd_pcm_hw_params *params)
{
 static const int vars[] = {
  135,
  132,
  129,
  133,
  130,
  131,
  134,
  128,
  -1
 };
 const int *v;
 struct snd_mask old_mask;
 struct snd_interval old_interval;
 int changed;

 for (v = vars; *v != -1; v++) {

  if (trace_hw_mask_param_enabled()) {
   if (hw_is_mask(*v))
    old_mask = *hw_param_mask(params, *v);
  }
  if (trace_hw_interval_param_enabled()) {
   if (hw_is_interval(*v))
    old_interval = *hw_param_interval(params, *v);
  }
  if (*v != 134)
   changed = snd_pcm_hw_param_first(pcm, params, *v, ((void*)0));
  else
   changed = snd_pcm_hw_param_last(pcm, params, *v, ((void*)0));
  if (changed < 0)
   return changed;
  if (changed == 0)
   continue;


  if (hw_is_mask(*v)) {
   trace_hw_mask_param(pcm, *v, 0, &old_mask,
         hw_param_mask(params, *v));
  }
  if (hw_is_interval(*v)) {
   trace_hw_interval_param(pcm, *v, 0, &old_interval,
      hw_param_interval(params, *v));
  }
 }

 return 0;
}
