
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_line6_pcm {int impulse_period; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_line6_pcm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_line6_impulse_period_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_line6_pcm *line6pcm = snd_kcontrol_chip(kcontrol);
 int value = ucontrol->value.integer.value[0];

 if (line6pcm->impulse_period == value)
  return 0;

 line6pcm->impulse_period = value;
 return 1;
}
