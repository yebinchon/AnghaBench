
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_6__ {TYPE_2__ integer; TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 unsigned char ICE1712_SPDIF_MASTER ;
 int ICEMT (struct snd_ice1712*,int ) ;
 unsigned int PRO_RATE_DEFAULT ;
 int RATE ;
 unsigned char inb (int ) ;
 int is_spdif_master (struct snd_ice1712*) ;
 int outb (unsigned char,int ) ;
 int snd_ice1712_set_input_clock_source (struct snd_ice1712*,int ) ;
 int snd_ice1712_set_pro_rate (struct snd_ice1712*,unsigned int,int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_pro_internal_clock_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 static const unsigned int xrate[13] = {
  8000, 9600, 11025, 12000, 16000, 22050, 24000,
  32000, 44100, 48000, 64000, 88200, 96000
 };
 unsigned char oval;
 int change = 0;

 spin_lock_irq(&ice->reg_lock);
 oval = inb(ICEMT(ice, RATE));
 if (ucontrol->value.enumerated.item[0] == 13) {
  outb(oval | ICE1712_SPDIF_MASTER, ICEMT(ice, RATE));
 } else {
  PRO_RATE_DEFAULT = xrate[ucontrol->value.integer.value[0] % 13];
  spin_unlock_irq(&ice->reg_lock);
  snd_ice1712_set_pro_rate(ice, PRO_RATE_DEFAULT, 1);
  spin_lock_irq(&ice->reg_lock);
 }
 change = inb(ICEMT(ice, RATE)) != oval;
 spin_unlock_irq(&ice->reg_lock);

 if ((oval & ICE1712_SPDIF_MASTER) !=
     (inb(ICEMT(ice, RATE)) & ICE1712_SPDIF_MASTER))
  snd_ice1712_set_input_clock_source(ice, is_spdif_master(ice));

 return change;
}
