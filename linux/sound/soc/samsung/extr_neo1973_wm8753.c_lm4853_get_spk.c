
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


 int gta02_speaker_enabled ;

__attribute__((used)) static int lm4853_get_spk(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 ucontrol->value.integer.value[0] = gta02_speaker_enabled;
 return 0;
}
