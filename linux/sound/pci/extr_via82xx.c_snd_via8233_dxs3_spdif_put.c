
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct via82xx {int spdif_on; int pci; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int VIA8233_SPDIF_CTRL ;
 int VIA8233_SPDIF_DX3 ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 struct via82xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_via8233_dxs3_spdif_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct via82xx *chip = snd_kcontrol_chip(kcontrol);
 u8 val, oval;

 pci_read_config_byte(chip->pci, VIA8233_SPDIF_CTRL, &oval);
 val = oval & ~VIA8233_SPDIF_DX3;
 if (ucontrol->value.integer.value[0])
  val |= VIA8233_SPDIF_DX3;

 chip->spdif_on = ucontrol->value.integer.value[0] ? 1 : 0;
 if (val != oval) {
  pci_write_config_byte(chip->pci, VIA8233_SPDIF_CTRL, val);
  return 1;
 }
 return 0;
}
