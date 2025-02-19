
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int p16v_capture_channel; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int CAPTURE_P16V_SOURCE ;
 int EINVAL ;
 int snd_emu10k1_ptr20_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,int ,int ,unsigned int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_p16v_capture_channel_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change = 0;
 u32 tmp;

 val = ucontrol->value.enumerated.item[0] ;
 if (val > 3)
  return -EINVAL;
 change = (emu->p16v_capture_channel != val);
 if (change) {
  emu->p16v_capture_channel = val;
  tmp = snd_emu10k1_ptr20_read(emu, CAPTURE_P16V_SOURCE, 0) & 0xfffc;
  snd_emu10k1_ptr20_write(emu, CAPTURE_P16V_SOURCE, 0, tmp | val);
 }
        return change;
}
