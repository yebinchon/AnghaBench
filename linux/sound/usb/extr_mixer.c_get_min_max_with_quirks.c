
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int id; TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {int min; int max; int res; int dBmin; int dBmax; scalar_t__ val_type; int initialized; int cmask; int control; TYPE_2__ head; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int chip; } ;


 int EINVAL ;
 int MAX_CHANNELS ;
 int UAC_GET_MAX ;
 int UAC_GET_MIN ;
 int UAC_GET_RES ;
 int UAC_SET_RES ;
 scalar_t__ USB_MIXER_BOOLEAN ;
 scalar_t__ USB_MIXER_INV_BOOLEAN ;
 int convert_signed_value (struct usb_mixer_elem_info*,int) ;
 scalar_t__ get_ctl_value (struct usb_mixer_elem_info*,int ,int,int*) ;
 scalar_t__ get_cur_mix_raw (struct usb_mixer_elem_info*,int,int*) ;
 int snd_usb_ctrl_intf (int ) ;
 scalar_t__ snd_usb_mixer_set_ctl_value (struct usb_mixer_elem_info*,int ,int,int) ;
 scalar_t__ snd_usb_set_cur_mix_value (struct usb_mixer_elem_info*,int,int ,int) ;
 int usb_audio_err (int ,char*,int ,int ,int,int ) ;
 int volume_control_quirks (struct usb_mixer_elem_info*,struct snd_kcontrol*) ;

__attribute__((used)) static int get_min_max_with_quirks(struct usb_mixer_elem_info *cval,
       int default_min, struct snd_kcontrol *kctl)
{

 cval->min = default_min;
 cval->max = cval->min + 1;
 cval->res = 1;
 cval->dBmin = cval->dBmax = 0;

 if (cval->val_type == USB_MIXER_BOOLEAN ||
     cval->val_type == USB_MIXER_INV_BOOLEAN) {
  cval->initialized = 1;
 } else {
  int minchn = 0;
  if (cval->cmask) {
   int i;
   for (i = 0; i < MAX_CHANNELS; i++)
    if (cval->cmask & (1 << i)) {
     minchn = i + 1;
     break;
    }
  }
  if (get_ctl_value(cval, UAC_GET_MAX, (cval->control << 8) | minchn, &cval->max) < 0 ||
      get_ctl_value(cval, UAC_GET_MIN, (cval->control << 8) | minchn, &cval->min) < 0) {
   usb_audio_err(cval->head.mixer->chip,
          "%d:%d: cannot get min/max values for control %d (id %d)\n",
       cval->head.id, snd_usb_ctrl_intf(cval->head.mixer->chip),
              cval->control, cval->head.id);
   return -EINVAL;
  }
  if (get_ctl_value(cval, UAC_GET_RES,
      (cval->control << 8) | minchn,
      &cval->res) < 0) {
   cval->res = 1;
  } else {
   int last_valid_res = cval->res;

   while (cval->res > 1) {
    if (snd_usb_mixer_set_ctl_value(cval, UAC_SET_RES,
        (cval->control << 8) | minchn,
        cval->res / 2) < 0)
     break;
    cval->res /= 2;
   }
   if (get_ctl_value(cval, UAC_GET_RES,
       (cval->control << 8) | minchn, &cval->res) < 0)
    cval->res = last_valid_res;
  }
  if (cval->res == 0)
   cval->res = 1;







  if (cval->min + cval->res < cval->max) {
   int last_valid_res = cval->res;
   int saved, test, check;
   get_cur_mix_raw(cval, minchn, &saved);
   for (;;) {
    test = saved;
    if (test < cval->max)
     test += cval->res;
    else
     test -= cval->res;
    if (test < cval->min || test > cval->max ||
        snd_usb_set_cur_mix_value(cval, minchn, 0, test) ||
        get_cur_mix_raw(cval, minchn, &check)) {
     cval->res = last_valid_res;
     break;
    }
    if (test == check)
     break;
    cval->res *= 2;
   }
   snd_usb_set_cur_mix_value(cval, minchn, 0, saved);
  }

  cval->initialized = 1;
 }

 if (kctl)
  volume_control_quirks(cval, kctl);




 cval->dBmin = (convert_signed_value(cval, cval->min) * 100) / 256;
 cval->dBmax = (convert_signed_value(cval, cval->max) * 100) / 256;
 if (cval->dBmin > cval->dBmax) {

  if (cval->dBmin < 0)
   cval->dBmax = 0;
  else if (cval->dBmin > 0)
   cval->dBmin = 0;
  if (cval->dBmin > cval->dBmax) {

   return -EINVAL;
  }
 }

 return 0;
}
