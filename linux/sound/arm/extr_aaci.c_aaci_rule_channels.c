
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_hw_rule {int var; struct aaci* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci {TYPE_2__* ac97_bus; } ;
struct TYPE_6__ {unsigned int slots; } ;
struct TYPE_5__ {TYPE_1__* pcms; } ;
struct TYPE_4__ {TYPE_3__* r; } ;


 int AC97_SLOT_LFE ;
 int AC97_SLOT_PCM_SLEFT ;
 int ARRAY_SIZE (unsigned int*) ;
 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (int ,int ,unsigned int*,unsigned int) ;

__attribute__((used)) static int aaci_rule_channels(struct snd_pcm_hw_params *p,
 struct snd_pcm_hw_rule *rule)
{
 static unsigned int channel_list[] = { 2, 4, 6 };
 struct aaci *aaci = rule->private;
 unsigned int mask = 1 << 0, slots;


 slots = aaci->ac97_bus->pcms[0].r[0].slots;
 if (slots & (1 << AC97_SLOT_PCM_SLEFT)) {
  mask |= 1 << 1;
  if (slots & (1 << AC97_SLOT_LFE))
   mask |= 1 << 2;
 }

 return snd_interval_list(hw_param_interval(p, rule->var),
     ARRAY_SIZE(channel_list), channel_list, mask);
}
