
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
struct snd_bebob {int dummy; } ;


 int METER_SIZE_SPECIAL ;
 int check_clk_sync (struct snd_bebob*,int ,int*) ;
 struct snd_bebob* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int special_sync_ctl_get(struct snd_kcontrol *kctl,
    struct snd_ctl_elem_value *uval)
{
 struct snd_bebob *bebob = snd_kcontrol_chip(kctl);
 int err;
 bool synced = 0;

 err = check_clk_sync(bebob, METER_SIZE_SPECIAL, &synced);
 if (err >= 0)
  uval->value.integer.value[0] = synced;

 return 0;
}
