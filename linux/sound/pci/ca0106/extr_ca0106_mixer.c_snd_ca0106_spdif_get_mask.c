
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* status; } ;
struct TYPE_3__ {TYPE_2__ iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;



__attribute__((used)) static int snd_ca0106_spdif_get_mask(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 ucontrol->value.iec958.status[0] = 0xff;
 ucontrol->value.iec958.status[1] = 0xff;
 ucontrol->value.iec958.status[2] = 0xff;
 ucontrol->value.iec958.status[3] = 0xff;
        return 0;
}
