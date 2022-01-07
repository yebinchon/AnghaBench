
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ak4113 {int * regmap; } ;


 int AK4113_IPS (int ) ;
 size_t AK4113_REG_IO1 ;
 struct ak4113* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ak4113_rx_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct ak4113 *chip = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] =
  (AK4113_IPS(chip->regmap[AK4113_REG_IO1]));
 return 0;
}
