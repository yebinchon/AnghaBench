
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {int cached; int* cache_val; int control; TYPE_2__ head; } ;
struct TYPE_3__ {int chip; int ignore_ctl_error; } ;


 int get_cur_mix_raw (struct usb_mixer_elem_info*,int,int*) ;
 int usb_audio_dbg (int ,char*,int ,int,int) ;

int snd_usb_get_cur_mix_value(struct usb_mixer_elem_info *cval,
        int channel, int index, int *value)
{
 int err;

 if (cval->cached & (1 << channel)) {
  *value = cval->cache_val[index];
  return 0;
 }
 err = get_cur_mix_raw(cval, channel, value);
 if (err < 0) {
  if (!cval->head.mixer->ignore_ctl_error)
   usb_audio_dbg(cval->head.mixer->chip,
    "cannot get current value for control %d ch %d: err = %d\n",
          cval->control, channel, err);
  return err;
 }
 cval->cached |= 1 << channel;
 cval->cache_val[index] = *value;
 return 0;
}
