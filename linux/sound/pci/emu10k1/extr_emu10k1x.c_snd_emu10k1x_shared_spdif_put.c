
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct emu10k1x {int dummy; } ;


 int ROUTING ;
 int SPDIF_SELECT ;
 int snd_emu10k1x_gpio_write (struct emu10k1x*,int) ;
 int snd_emu10k1x_ptr_write (struct emu10k1x*,int ,int ,int) ;
 struct emu10k1x* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu10k1x_shared_spdif_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct emu10k1x *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;

 val = ucontrol->value.integer.value[0] ;

 if (val) {

  snd_emu10k1x_ptr_write(emu, SPDIF_SELECT, 0, 0x000);
  snd_emu10k1x_ptr_write(emu, ROUTING, 0, 0x700);
  snd_emu10k1x_gpio_write(emu, 0x1000);
 } else {

  snd_emu10k1x_ptr_write(emu, SPDIF_SELECT, 0, 0x700);
  snd_emu10k1x_ptr_write(emu, ROUTING, 0, 0x1003F);
  snd_emu10k1x_gpio_write(emu, 0x1080);
 }
 return 0;
}
