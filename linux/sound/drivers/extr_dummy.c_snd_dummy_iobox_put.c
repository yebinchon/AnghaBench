
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_dummy {int iobox; TYPE_6__* cd_switch_ctl; int card; TYPE_5__* cd_volume_ctl; } ;
struct TYPE_7__ {int* item; } ;
struct TYPE_8__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_12__ {int id; TYPE_4__* vd; } ;
struct TYPE_11__ {int id; TYPE_3__* vd; } ;
struct TYPE_10__ {int access; } ;
struct TYPE_9__ {int access; } ;


 int EINVAL ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int snd_ctl_notify (int ,int ,int *) ;
 struct snd_dummy* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_dummy_iobox_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *value)
{
 struct snd_dummy *dummy = snd_kcontrol_chip(kcontrol);
 int changed;

 if (value->value.enumerated.item[0] > 1)
  return -EINVAL;

 changed = value->value.enumerated.item[0] != dummy->iobox;
 if (changed) {
  dummy->iobox = value->value.enumerated.item[0];

  if (dummy->iobox) {
   dummy->cd_volume_ctl->vd[0].access &=
    ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
   dummy->cd_switch_ctl->vd[0].access &=
    ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  } else {
   dummy->cd_volume_ctl->vd[0].access |=
    SNDRV_CTL_ELEM_ACCESS_INACTIVE;
   dummy->cd_switch_ctl->vd[0].access |=
    SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  }

  snd_ctl_notify(dummy->card, SNDRV_CTL_EVENT_MASK_INFO,
          &dummy->cd_volume_ctl->id);
  snd_ctl_notify(dummy->card, SNDRV_CTL_EVENT_MASK_INFO,
          &dummy->cd_switch_ctl->id);
 }

 return changed;
}
