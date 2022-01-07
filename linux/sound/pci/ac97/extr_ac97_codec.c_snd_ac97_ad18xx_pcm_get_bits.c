
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_7__ {int* pcmreg; } ;
struct TYPE_8__ {TYPE_3__ ad18xx; } ;
struct snd_ac97 {int flags; TYPE_4__ spec; } ;


 int AC97_STEREO_MUTES ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_ad18xx_pcm_get_bits(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 int codec = kcontrol->private_value & 3;
 int lshift = (kcontrol->private_value >> 8) & 0x0f;
 int rshift = (kcontrol->private_value >> 12) & 0x0f;
 int mask = (kcontrol->private_value >> 16) & 0xff;

 ucontrol->value.integer.value[0] = mask - ((ac97->spec.ad18xx.pcmreg[codec] >> lshift) & mask);
 if (lshift != rshift && (ac97->flags & AC97_STEREO_MUTES))
  ucontrol->value.integer.value[1] = mask - ((ac97->spec.ad18xx.pcmreg[codec] >> rshift) & mask);
 return 0;
}
