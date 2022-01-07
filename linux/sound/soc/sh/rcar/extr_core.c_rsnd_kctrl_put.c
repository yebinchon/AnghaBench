
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {scalar_t__* value; } ;
struct TYPE_4__ {scalar_t__* item; } ;
struct TYPE_6__ {TYPE_2__ integer; TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct rsnd_kctrl_cfg {int size; scalar_t__* val; int mod; int io; int (* update ) (int ,int ) ;scalar_t__ texts; int (* accept ) (int ) ;} ;


 struct rsnd_kctrl_cfg* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int rsnd_kctrl_put(struct snd_kcontrol *kctrl,
     struct snd_ctl_elem_value *uc)
{
 struct rsnd_kctrl_cfg *cfg = snd_kcontrol_chip(kctrl);
 int i, change = 0;

 if (!cfg->accept(cfg->io))
  return 0;

 for (i = 0; i < cfg->size; i++) {
  if (cfg->texts) {
   change |= (uc->value.enumerated.item[i] != cfg->val[i]);
   cfg->val[i] = uc->value.enumerated.item[i];
  } else {
   change |= (uc->value.integer.value[i] != cfg->val[i]);
   cfg->val[i] = uc->value.integer.value[i];
  }
 }

 if (change && cfg->update)
  cfg->update(cfg->io, cfg->mod);

 return change;
}
