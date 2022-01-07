
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int avail_slots; } ;
struct uniperif {TYPE_1__ tdm_slot; } ;
struct snd_pcm_hw_rule {int var; struct uniperif* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ integer; scalar_t__ openmax; scalar_t__ openmin; int max; int min; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (int ,struct snd_interval*) ;

int sti_uniperiph_fix_tdm_chan(struct snd_pcm_hw_params *params,
          struct snd_pcm_hw_rule *rule)
{
 struct uniperif *uni = rule->private;
 struct snd_interval t;

 t.min = uni->tdm_slot.avail_slots;
 t.max = uni->tdm_slot.avail_slots;
 t.openmin = 0;
 t.openmax = 0;
 t.integer = 0;

 return snd_interval_refine(hw_param_interval(params, rule->var), &t);
}
