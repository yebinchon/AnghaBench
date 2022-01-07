
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


 int S3C2410_GPJ (int) ;
 int gpio_set_value (int ,int) ;
 int gta02_speaker_enabled ;

__attribute__((used)) static int lm4853_set_spk(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 gta02_speaker_enabled = ucontrol->value.integer.value[0];

 gpio_set_value(S3C2410_GPJ(2), !gta02_speaker_enabled);

 return 0;
}
