
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {unsigned int optical_out; scalar_t__ optical_in; } ;
struct snd_emu10k1 {TYPE_1__ emu1010; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 int EINVAL ;
 int EMU_HANA_OPTICAL_IN_ADAT ;
 int EMU_HANA_OPTICAL_OUT_ADAT ;
 int EMU_HANA_OPTICAL_TYPE ;
 int snd_emu1010_fpga_write (struct snd_emu10k1*,int ,int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu1010_optical_out_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 u32 tmp;
 int change = 0;

 val = ucontrol->value.enumerated.item[0];

 if (val >= 2)
  return -EINVAL;
 change = (emu->emu1010.optical_out != val);
 if (change) {
  emu->emu1010.optical_out = val;
  tmp = (emu->emu1010.optical_in ? EMU_HANA_OPTICAL_IN_ADAT : 0) |
   (emu->emu1010.optical_out ? EMU_HANA_OPTICAL_OUT_ADAT : 0);
  snd_emu1010_fpga_write(emu, EMU_HANA_OPTICAL_TYPE, tmp);
 }
 return change;
}
