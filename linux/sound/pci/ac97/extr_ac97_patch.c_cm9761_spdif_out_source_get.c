
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int* regs; } ;


 size_t AC97_CM9761_FUNC ;
 size_t AC97_CM9761_SPDIF_CTRL ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cm9761_spdif_out_source_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);

 if (ac97->regs[AC97_CM9761_FUNC] & 0x1)
  ucontrol->value.enumerated.item[0] = 2;
 else if (ac97->regs[AC97_CM9761_SPDIF_CTRL] & 0x2)
  ucontrol->value.enumerated.item[0] = 1;
 else
  ucontrol->value.enumerated.item[0] = 0;
 return 0;
}
