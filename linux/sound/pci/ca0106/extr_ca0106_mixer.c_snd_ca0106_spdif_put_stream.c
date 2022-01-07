
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct snd_ca0106 {unsigned int* spdif_str_bits; } ;


 int ca0106_set_spdif_bits (struct snd_ca0106*,unsigned int) ;
 unsigned int encode_spdif_bits (int ) ;
 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_ca0106* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ca0106_spdif_put_stream(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ca0106 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 unsigned int val;

 val = encode_spdif_bits(ucontrol->value.iec958.status);
 if (val != emu->spdif_str_bits[idx]) {
  emu->spdif_str_bits[idx] = val;
  ca0106_set_spdif_bits(emu, idx);
  return 1;
 }
        return 0;
}
