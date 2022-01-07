
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct via82xx {int pci; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int VIA8233_SPDIF_CTRL ;
 int VIA8233_SPDIF_DX3 ;
 int pci_read_config_byte (int ,int ,int*) ;
 struct via82xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_via8233_dxs3_spdif_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct via82xx *chip = snd_kcontrol_chip(kcontrol);
 u8 val;

 pci_read_config_byte(chip->pci, VIA8233_SPDIF_CTRL, &val);
 ucontrol->value.integer.value[0] = (val & VIA8233_SPDIF_DX3) ? 1 : 0;
 return 0;
}
