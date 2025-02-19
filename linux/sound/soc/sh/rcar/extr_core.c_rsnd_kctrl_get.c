
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_6__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ integer; TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rsnd_kctrl_cfg {int size; int * val; scalar_t__ texts; } ;


 struct rsnd_kctrl_cfg* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int rsnd_kctrl_get(struct snd_kcontrol *kctrl,
     struct snd_ctl_elem_value *uc)
{
 struct rsnd_kctrl_cfg *cfg = snd_kcontrol_chip(kctrl);
 int i;

 for (i = 0; i < cfg->size; i++)
  if (cfg->texts)
   uc->value.enumerated.item[i] = cfg->val[i];
  else
   uc->value.integer.value[i] = cfg->val[i];

 return 0;
}
