
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int dummy; } ;


 int EINVAL ;
 int hdspm_set_dds_value (struct hdspm*,int) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_put_system_sample_rate(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *
         ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 int rate = ucontrol->value.integer.value[0];

 if (rate < 27000 || rate > 207000)
  return -EINVAL;
 hdspm_set_dds_value(hdspm, ucontrol->value.integer.value[0]);
 return 0;
}
