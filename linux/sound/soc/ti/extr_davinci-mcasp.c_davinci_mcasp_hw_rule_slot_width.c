
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_hw_rule {struct davinci_mcasp_ruledata* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct davinci_mcasp_ruledata {TYPE_1__* mcasp; } ;
struct TYPE_2__ {int slot_width; } ;


 int SNDRV_PCM_FORMAT_LAST ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_none (struct snd_mask*) ;
 int snd_mask_refine (struct snd_mask*,struct snd_mask*) ;
 int snd_mask_set (struct snd_mask*,int) ;
 scalar_t__ snd_mask_test (struct snd_mask*,int) ;
 int snd_pcm_format_width (int) ;

__attribute__((used)) static int davinci_mcasp_hw_rule_slot_width(struct snd_pcm_hw_params *params,
         struct snd_pcm_hw_rule *rule)
{
 struct davinci_mcasp_ruledata *rd = rule->private;
 struct snd_mask *fmt = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);
 struct snd_mask nfmt;
 int i, slot_width;

 snd_mask_none(&nfmt);
 slot_width = rd->mcasp->slot_width;

 for (i = 0; i <= SNDRV_PCM_FORMAT_LAST; i++) {
  if (snd_mask_test(fmt, i)) {
   if (snd_pcm_format_width(i) <= slot_width) {
    snd_mask_set(&nfmt, i);
   }
  }
 }

 return snd_mask_refine(fmt, &nfmt);
}
