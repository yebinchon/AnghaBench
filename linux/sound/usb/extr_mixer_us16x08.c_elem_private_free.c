
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {struct usb_mixer_elem_info* private_data; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;


 int kfree (struct usb_mixer_elem_info*) ;

__attribute__((used)) static void elem_private_free(struct snd_kcontrol *kctl)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;

 if (elem)
  kfree(elem->private_data);
 kfree(elem);
 kctl->private_data = ((void*)0);
}
