
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {struct snd_akm4xxx* akm; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;


 int AK4620_DEEMVOL_REG ;
 unsigned int AK4620_SMUTE ;
 unsigned int SCR_MUTE ;
 unsigned int get_scr (struct snd_ice1712*) ;
 int qtet_akm_set_regs (struct snd_akm4xxx*,int ,unsigned int,unsigned int) ;
 int set_scr (struct snd_ice1712*,unsigned int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int qtet_mute_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int old, new, smute;
 old = get_scr(ice) & SCR_MUTE;
 if (ucontrol->value.integer.value[0]) {

  new = 0;

  smute = 0;
 } else {

  new = SCR_MUTE;

  smute = AK4620_SMUTE;
 }
 if (old != new) {
  struct snd_akm4xxx *ak = ice->akm;
  set_scr(ice, (get_scr(ice) & ~SCR_MUTE) | new);

  qtet_akm_set_regs(ak, AK4620_DEEMVOL_REG, AK4620_SMUTE, smute);
  return 1;
 }

 return 0;
}
