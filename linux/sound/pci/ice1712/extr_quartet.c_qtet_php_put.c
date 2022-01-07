
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int SCR_PHP ;
 unsigned int SCR_PHP_V ;
 unsigned int get_scr (struct snd_ice1712*) ;
 int set_scr (struct snd_ice1712*,unsigned int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int qtet_php_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int old, new;
 old = new = get_scr(ice);
 if (ucontrol->value.integer.value[0]
   && (~old & SCR_PHP_V)) {


  new = old | SCR_PHP_V;
  set_scr(ice, new);

  new &= ~SCR_PHP;
  set_scr(ice, new);
 } else if (!ucontrol->value.integer.value[0] && (old & SCR_PHP_V)) {



  new = old & ~SCR_PHP_V;
  set_scr(ice, new);

  new |= SCR_PHP;
  set_scr(ice, new);
 }
 if (old != new)
  return 1;

 return 0;
}
