
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct usb_mixer_elem_info {int dummy; } ;
struct scarlett_device_info {int opt_master; } ;
typedef int mx ;


 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int USB_MIXER_S16 ;
 int add_new_ctl (struct usb_mixer_interface*,int *,int ,int,int,int,int ,int,char*,int *,struct usb_mixer_elem_info**) ;
 int scarlett_ctl_enum_resume ;
 int scarlett_ctl_resume ;
 int snprintf (char*,int,char*,int,char const*) ;
 int usb_scarlett_ctl_dynamic_enum ;
 int usb_scarlett_ctl_master ;
 int usb_scarlett_ctl_switch ;

__attribute__((used)) static int add_output_ctls(struct usb_mixer_interface *mixer,
      int index, const char *name,
      const struct scarlett_device_info *info)
{
 int err;
 char mx[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
 struct usb_mixer_elem_info *elem;


 snprintf(mx, sizeof(mx), "Master %d (%s) Playback Switch",
  index + 1, name);
 err = add_new_ctl(mixer, &usb_scarlett_ctl_switch,
     scarlett_ctl_resume, 0x0a, 0x01,
     2*index+1, USB_MIXER_S16, 2, mx, ((void*)0), &elem);
 if (err < 0)
  return err;


 snprintf(mx, sizeof(mx), "Master %d (%s) Playback Volume",
  index + 1, name);
 err = add_new_ctl(mixer, &usb_scarlett_ctl_master,
     scarlett_ctl_resume, 0x0a, 0x02,
     2*index+1, USB_MIXER_S16, 2, mx, ((void*)0), &elem);
 if (err < 0)
  return err;


 snprintf(mx, sizeof(mx), "Master %dL (%s) Source Playback Enum",
  index + 1, name);
 err = add_new_ctl(mixer, &usb_scarlett_ctl_dynamic_enum,
     scarlett_ctl_enum_resume, 0x33, 0x00,
     2*index, USB_MIXER_S16, 1, mx, &info->opt_master,
     &elem);
 if (err < 0)
  return err;


 snprintf(mx, sizeof(mx), "Master %dR (%s) Source Playback Enum",
  index + 1, name);
 err = add_new_ctl(mixer, &usb_scarlett_ctl_dynamic_enum,
     scarlett_ctl_enum_resume, 0x33, 0x00,
     2*index+1, USB_MIXER_S16, 1, mx, &info->opt_master,
     &elem);
 if (err < 0)
  return err;

 return 0;
}
