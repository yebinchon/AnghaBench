
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;


 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_ymfpci_readl (struct snd_ymfpci*,int) ;

__attribute__((used)) static int snd_ymfpci_get_single(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xffff;
 unsigned int shift = (kcontrol->private_value >> 16) & 0xff;
 unsigned int mask = 1;

 switch (reg) {
 case 128: break;
 case 129: break;
 default: return -EINVAL;
 }
 ucontrol->value.integer.value[0] =
  (snd_ymfpci_readl(chip, reg) >> shift) & mask;
 return 0;
}
