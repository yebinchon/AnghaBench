
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_list {int dummy; } ;
struct usb_mixer_elem_info {int * cache_val; scalar_t__ cached; } ;


 struct usb_mixer_elem_info* mixer_elem_list_to_info (struct usb_mixer_elem_list*) ;
 int snd_usb_set_cur_mix_value (struct usb_mixer_elem_info*,int ,int ,int ) ;

__attribute__((used)) static int scarlett_ctl_enum_resume(struct usb_mixer_elem_list *list)
{
 struct usb_mixer_elem_info *elem = mixer_elem_list_to_info(list);

 if (elem->cached)
  snd_usb_set_cur_mix_value(elem, 0, 0, *elem->cache_val);
 return 0;
}
