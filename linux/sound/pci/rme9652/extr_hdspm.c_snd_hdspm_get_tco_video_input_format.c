
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int dummy; } ;


 scalar_t__ HDSPM_RD_TCO ;


 int hdspm_read (struct hdspm*,scalar_t__) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_get_tco_video_input_format(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 u32 status;
 int ret = 0;

 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 status = hdspm_read(hdspm, HDSPM_RD_TCO + 4);
 switch (status & (129 |
   128)) {
 case 129:

  ret = 1;
  break;
 case 128:

  ret = 2;
  break;
 default:

  ret = 0;
  break;
 }
 ucontrol->value.enumerated.item[0] = ret;
 return 0;
}
