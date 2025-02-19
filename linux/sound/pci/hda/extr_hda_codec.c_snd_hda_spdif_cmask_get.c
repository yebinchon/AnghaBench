
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


 int IEC958_AES0_CON_EMPHASIS_5015 ;
 int IEC958_AES0_CON_NOT_COPYRIGHT ;
 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES1_CON_CATEGORY ;
 int IEC958_AES1_CON_ORIGINAL ;

__attribute__((used)) static int snd_hda_spdif_cmask_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 ucontrol->value.iec958.status[0] = IEC958_AES0_PROFESSIONAL |
        IEC958_AES0_NONAUDIO |
        IEC958_AES0_CON_EMPHASIS_5015 |
        IEC958_AES0_CON_NOT_COPYRIGHT;
 ucontrol->value.iec958.status[1] = IEC958_AES1_CON_CATEGORY |
        IEC958_AES1_CON_ORIGINAL;
 return 0;
}
