
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct usb_mixer_elem_list {int id; int resume; int dump; struct usb_mixer_interface* mixer; } ;


 int restore_mixer_value ;
 int snd_usb_mixer_dump_cval ;

void snd_usb_mixer_elem_init_std(struct usb_mixer_elem_list *list,
     struct usb_mixer_interface *mixer,
     int unitid)
{
 list->mixer = mixer;
 list->id = unitid;
 list->dump = snd_usb_mixer_dump_cval;



}
