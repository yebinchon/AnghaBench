
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct usb_mixer_elem_info {int dummy; } ;
struct scarlett_mixer_control {int type; int num; int name; } ;
struct scarlett_device_info {int num_controls; struct scarlett_mixer_control* controls; } ;





 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int USB_MIXER_S16 ;
 int add_new_ctl (struct usb_mixer_interface*,int *,int ,int,int,int,int ,int,char*,int *,struct usb_mixer_elem_info**) ;
 int add_output_ctls (struct usb_mixer_interface*,int,int ,struct scarlett_device_info*) ;
 int opt_impedance ;
 int opt_pad ;
 int scarlett_ctl_enum_resume ;
 int scarlett_ctl_resume ;
 int sprintf (char*,char*,int) ;
 int usb_scarlett_ctl_enum ;
 int usb_scarlett_ctl_master ;
 int usb_scarlett_ctl_switch ;

__attribute__((used)) static int scarlett_controls_create_generic(struct usb_mixer_interface *mixer,
 struct scarlett_device_info *info)
{
 int i, err;
 char mx[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
 const struct scarlett_mixer_control *ctl;
 struct usb_mixer_elem_info *elem;


 err = add_new_ctl(mixer, &usb_scarlett_ctl_switch,
     scarlett_ctl_resume, 0x0a, 0x01, 0,
     USB_MIXER_S16, 1, "Master Playback Switch", ((void*)0),
     &elem);
 if (err < 0)
  return err;

 err = add_new_ctl(mixer, &usb_scarlett_ctl_master,
     scarlett_ctl_resume, 0x0a, 0x02, 0,
     USB_MIXER_S16, 1, "Master Playback Volume", ((void*)0),
     &elem);
 if (err < 0)
  return err;


 for (i = 0; i < info->num_controls; i++) {
  ctl = &info->controls[i];

  switch (ctl->type) {
  case 130:
   err = add_output_ctls(mixer, ctl->num, ctl->name, info);
   if (err < 0)
    return err;
   break;
  case 129:
   sprintf(mx, "Input %d Impedance Switch", ctl->num);
   err = add_new_ctl(mixer, &usb_scarlett_ctl_enum,
       scarlett_ctl_enum_resume, 0x01,
       0x09, ctl->num, USB_MIXER_S16, 1, mx,
       &opt_impedance, &elem);
   if (err < 0)
    return err;
   break;
  case 128:
   sprintf(mx, "Input %d Pad Switch", ctl->num);
   err = add_new_ctl(mixer, &usb_scarlett_ctl_enum,
       scarlett_ctl_enum_resume, 0x01,
       0x0b, ctl->num, USB_MIXER_S16, 1, mx,
       &opt_pad, &elem);
   if (err < 0)
    return err;
   break;
  }
 }

 return 0;
}
