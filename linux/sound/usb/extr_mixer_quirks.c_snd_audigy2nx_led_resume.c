
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_elem_list {int mixer; TYPE_1__* kctl; } ;
struct TYPE_2__ {int private_value; } ;


 int snd_audigy2nx_led_update (int ,int,int) ;

__attribute__((used)) static int snd_audigy2nx_led_resume(struct usb_mixer_elem_list *list)
{
 int priv_value = list->kctl->private_value;

 return snd_audigy2nx_led_update(list->mixer, priv_value >> 8,
     priv_value & 0xff);
}
