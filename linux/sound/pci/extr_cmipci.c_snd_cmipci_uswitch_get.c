
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct cmipci_switch_args {int dummy; } ;


 int EINVAL ;
 int _snd_cmipci_uswitch_get (struct snd_kcontrol*,struct snd_ctl_elem_value*,struct cmipci_switch_args*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int snd_cmipci_uswitch_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci_switch_args *args;
 args = (struct cmipci_switch_args *)kcontrol->private_value;
 if (snd_BUG_ON(!args))
  return -EINVAL;
 return _snd_cmipci_uswitch_get(kcontrol, ucontrol, args);
}
