
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


struct TYPE_10__ {TYPE_3__* mixer; } ;
struct usb_mixer_elem_info {scalar_t__ val_type; scalar_t__ dBmin; scalar_t__ dBmax; int max; int min; int res; TYPE_4__ head; scalar_t__ initialized; int channels; } ;
struct snd_kcontrol {int id; TYPE_1__* vd; struct usb_mixer_elem_info* private_data; } ;
struct TYPE_11__ {int max; scalar_t__ min; } ;
struct TYPE_12__ {TYPE_5__ integer; } ;
struct snd_ctl_elem_info {TYPE_6__ value; int count; int type; } ;
struct TYPE_9__ {TYPE_2__* chip; } ;
struct TYPE_8__ {int card; } ;
struct TYPE_7__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 scalar_t__ USB_MIXER_BOOLEAN ;
 scalar_t__ USB_MIXER_INV_BOOLEAN ;
 int get_min_max_with_quirks (struct usb_mixer_elem_info*,int ,struct snd_kcontrol*) ;
 int snd_ctl_notify (int ,int ,int *) ;

__attribute__((used)) static int mixer_ctl_feature_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 struct usb_mixer_elem_info *cval = kcontrol->private_data;

 if (cval->val_type == USB_MIXER_BOOLEAN ||
     cval->val_type == USB_MIXER_INV_BOOLEAN)
  uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 else
  uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = cval->channels;
 if (cval->val_type == USB_MIXER_BOOLEAN ||
     cval->val_type == USB_MIXER_INV_BOOLEAN) {
  uinfo->value.integer.min = 0;
  uinfo->value.integer.max = 1;
 } else {
  if (!cval->initialized) {
   get_min_max_with_quirks(cval, 0, kcontrol);
   if (cval->initialized && cval->dBmin >= cval->dBmax) {
    kcontrol->vd[0].access &=
     ~(SNDRV_CTL_ELEM_ACCESS_TLV_READ |
       SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK);
    snd_ctl_notify(cval->head.mixer->chip->card,
            SNDRV_CTL_EVENT_MASK_INFO,
            &kcontrol->id);
   }
  }
  uinfo->value.integer.min = 0;
  uinfo->value.integer.max =
   (cval->max - cval->min + cval->res - 1) / cval->res;
 }
 return 0;
}
