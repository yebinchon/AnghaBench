
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;





 unsigned int SCR_AIN12_SEL0 ;
 unsigned int SCR_AIN12_SEL1 ;
 unsigned int SCR_RELAY ;
 unsigned int get_scr (struct snd_ice1712*) ;
 int set_scr (struct snd_ice1712*,unsigned int) ;
 int snd_BUG () ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int qtet_ain12_sw_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int old, new, tmp, masked_old;
 old = new = get_scr(ice);
 masked_old = old & (SCR_AIN12_SEL1 | SCR_AIN12_SEL0);
 tmp = ucontrol->value.integer.value[0];
 if (tmp == 2)
  tmp = 3;
 tmp <<= 4;
 if (tmp != masked_old) {

  switch (tmp) {
  case 130:
   new = old & ~(SCR_AIN12_SEL1 | SCR_AIN12_SEL0);
   set_scr(ice, new);

   new &= ~SCR_RELAY;
   set_scr(ice, new);
   break;
  case 128:

   new = old | SCR_RELAY;
   set_scr(ice, new);
   new = (new & ~SCR_AIN12_SEL1) | SCR_AIN12_SEL0;
   set_scr(ice, new);
   break;
  case 129:

   new = old | SCR_RELAY;
   set_scr(ice, new);
   new |= SCR_AIN12_SEL1 | SCR_AIN12_SEL0;
   set_scr(ice, new);
   break;
  default:
   snd_BUG();
  }
  return 1;
 }

 return 0;
}
