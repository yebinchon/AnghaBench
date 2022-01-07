
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wm8776 {unsigned int switch_bits; } ;
struct snd_maya44 {struct snd_wm8776* wm; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 unsigned int GET_SW_VAL_IDX (int ) ;
 size_t snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 struct snd_maya44* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int maya_sw_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_maya44 *chip = snd_kcontrol_chip(kcontrol);
 struct snd_wm8776 *wm =
  &chip->wm[snd_ctl_get_ioff(kcontrol, &ucontrol->id)];
 unsigned int idx = GET_SW_VAL_IDX(kcontrol->private_value);

 ucontrol->value.integer.value[0] = (wm->switch_bits >> idx) & 1;
 return 0;
}
