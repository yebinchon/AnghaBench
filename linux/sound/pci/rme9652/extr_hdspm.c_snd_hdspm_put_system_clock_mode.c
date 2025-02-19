
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
struct hdspm {int dummy; } ;


 int EBUSY ;
 int hdspm_set_system_clock_mode (struct hdspm*,int) ;
 int snd_hdspm_use_is_exclusive (struct hdspm*) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_put_system_clock_mode(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 int val;

 if (!snd_hdspm_use_is_exclusive(hdspm))
  return -EBUSY;

 val = ucontrol->value.enumerated.item[0];
 if (val < 0)
  val = 0;
 else if (val > 1)
  val = 1;

 hdspm_set_system_clock_mode(hdspm, val);

 return 0;
}
