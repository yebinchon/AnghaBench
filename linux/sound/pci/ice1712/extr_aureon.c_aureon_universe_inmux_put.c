
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {struct aureon_spec* spec; } ;
struct TYPE_3__ {unsigned char* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct aureon_spec {unsigned char pca9554_out; } ;


 int EINVAL ;
 int PCA9554_OUT ;
 int aureon_pca9554_write (struct snd_ice1712*,int ,unsigned char) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int aureon_universe_inmux_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct aureon_spec *spec = ice->spec;
 unsigned char oval, nval;
 int change;

 nval = ucontrol->value.enumerated.item[0];
 if (nval >= 3)
  return -EINVAL;
 snd_ice1712_save_gpio_status(ice);
 oval = spec->pca9554_out;
 change = (oval != nval);
 if (change) {
  aureon_pca9554_write(ice, PCA9554_OUT, nval);
  spec->pca9554_out = nval;
 }
 snd_ice1712_restore_gpio_status(ice);
 return change;
}
