
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {struct se_spec* spec; } ;
struct TYPE_6__ {int * value; } ;
struct TYPE_5__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct se_spec {TYPE_1__* vol; } ;
struct TYPE_4__ {unsigned int ch1; } ;


 int se200pci_cont_update (struct snd_ice1712*,int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int se200pci_cont_boolean_put(struct snd_kcontrol *kc,
         struct snd_ctl_elem_value *uc)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kc);
 struct se_spec *spec = ice->spec;
 int n = kc->private_value;
 unsigned int vol1;

 vol1 = !!uc->value.integer.value[0];
 if (spec->vol[n].ch1 != vol1) {
  spec->vol[n].ch1 = vol1;
  se200pci_cont_update(ice, n);
  return 1;
 }
 return 0;
}
