
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int * item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct TYPE_4__ {int index; } ;
struct snd_ctl_elem_value {TYPE_3__ value; TYPE_1__ id; } ;
struct hdsp {int io_type; } ;



 int EINVAL ;
 int EIO ;



 int hdsp_adat_sync_check (struct hdsp*,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdsp_get_adat_sync_check(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 int offset;
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);

 offset = ucontrol->id.index - 1;
 if (snd_BUG_ON(offset < 0))
  return -EINVAL;

 switch (hdsp->io_type) {
 case 131:
 case 129:
  if (offset >= 3)
   return -EINVAL;
  break;
 case 128:
 case 130:
  if (offset >= 1)
   return -EINVAL;
  break;
 default:
  return -EIO;
 }

 ucontrol->value.enumerated.item[0] = hdsp_adat_sync_check(hdsp, offset);
 return 0;
}
