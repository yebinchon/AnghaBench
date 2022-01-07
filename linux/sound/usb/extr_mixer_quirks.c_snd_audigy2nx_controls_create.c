
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_1__* chip; } ;
struct snd_kcontrol_new {int private_value; int name; } ;
struct TYPE_2__ {scalar_t__ usb_id; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ USB_ID (int,int) ;
 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int ,struct snd_kcontrol_new*,int *) ;
 struct snd_kcontrol_new snd_audigy2nx_control ;
 int * snd_audigy2nx_led_names ;
 int snd_audigy2nx_led_resume ;

__attribute__((used)) static int snd_audigy2nx_controls_create(struct usb_mixer_interface *mixer)
{
 int i, err;

 for (i = 0; i < ARRAY_SIZE(snd_audigy2nx_led_names); ++i) {
  struct snd_kcontrol_new knew;


  if ((mixer->chip->usb_id == USB_ID(0x041e, 0x3042)) && i == 0)
   continue;

  if ((mixer->chip->usb_id == USB_ID(0x041e, 0x30df)) && i == 0)
   continue;
  if (i > 1 &&
   (mixer->chip->usb_id == USB_ID(0x041e, 0x3040) ||
    mixer->chip->usb_id == USB_ID(0x041e, 0x3042) ||
    mixer->chip->usb_id == USB_ID(0x041e, 0x30df) ||
    mixer->chip->usb_id == USB_ID(0x041e, 0x3048)))
   break;

  knew = snd_audigy2nx_control;
  knew.name = snd_audigy2nx_led_names[i];
  knew.private_value = (1 << 8) | i;
  err = add_single_ctl_with_resume(mixer, 0,
       snd_audigy2nx_led_resume,
       &knew, ((void*)0));
  if (err < 0)
   return err;
 }
 return 0;
}
