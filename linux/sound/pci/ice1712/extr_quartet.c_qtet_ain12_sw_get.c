
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
 unsigned int get_scr (struct snd_ice1712*) ;
 int snd_BUG () ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int qtet_ain12_sw_get(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int val, result;
 val = get_scr(ice) & (SCR_AIN12_SEL1 | SCR_AIN12_SEL0);
 switch (val) {
 case 130:
  result = 0;
  break;
 case 128:
  result = 1;
  break;
 case 129:
  result = 2;
  break;
 default:

  snd_BUG();
  result = 0;
 }
 ucontrol->value.integer.value[0] = result;
 return 0;
}
