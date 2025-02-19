
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int channels; struct scarlett_mixer_elem_enum_info* private_data; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct scarlett_mixer_elem_enum_info {scalar_t__ names; int len; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int ,int ,char const* const*) ;

__attribute__((used)) static int scarlett_ctl_enum_info(struct snd_kcontrol *kctl,
      struct snd_ctl_elem_info *uinfo)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 struct scarlett_mixer_elem_enum_info *opt = elem->private_data;

 return snd_ctl_enum_info(uinfo, elem->channels, opt->len,
     (const char * const *)opt->names);
}
