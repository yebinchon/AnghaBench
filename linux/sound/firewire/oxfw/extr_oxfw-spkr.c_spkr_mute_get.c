
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_oxfw {struct fw_spkr* spec; } ;
struct snd_kcontrol {struct snd_oxfw* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fw_spkr {int mute; } ;



__attribute__((used)) static int spkr_mute_get(struct snd_kcontrol *control,
    struct snd_ctl_elem_value *value)
{
 struct snd_oxfw *oxfw = control->private_data;
 struct fw_spkr *spkr = oxfw->spec;

 value->value.integer.value[0] = !spkr->mute;

 return 0;
}
