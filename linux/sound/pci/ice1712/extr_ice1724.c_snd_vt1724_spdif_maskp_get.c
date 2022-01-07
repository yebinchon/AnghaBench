
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_EMPHASIS ;
 int IEC958_AES0_PRO_FS ;

__attribute__((used)) static int snd_vt1724_spdif_maskp_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 ucontrol->value.iec958.status[0] = IEC958_AES0_NONAUDIO |
           IEC958_AES0_PROFESSIONAL |
           IEC958_AES0_PRO_FS |
           IEC958_AES0_PRO_EMPHASIS;
 return 0;
}
