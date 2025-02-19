
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;


 int AK_GET_ADDR (int ) ;
 int AK_GET_CHIP (int ) ;
 void* snd_akm4xxx_get_vol (struct snd_akm4xxx*,int,int) ;
 struct snd_akm4xxx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_akm4xxx_stereo_volume_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_akm4xxx *ak = snd_kcontrol_chip(kcontrol);
 int chip = AK_GET_CHIP(kcontrol->private_value);
 int addr = AK_GET_ADDR(kcontrol->private_value);

 ucontrol->value.integer.value[0] = snd_akm4xxx_get_vol(ak, chip, addr);
 ucontrol->value.integer.value[1] = snd_akm4xxx_get_vol(ak, chip, addr+1);
 return 0;
}
