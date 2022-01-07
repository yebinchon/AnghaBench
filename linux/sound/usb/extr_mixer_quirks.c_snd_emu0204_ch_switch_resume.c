
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_elem_list {TYPE_1__* kctl; int mixer; } ;
struct TYPE_2__ {int private_value; } ;


 int snd_emu0204_ch_switch_update (int ,int ) ;

__attribute__((used)) static int snd_emu0204_ch_switch_resume(struct usb_mixer_elem_list *list)
{
 return snd_emu0204_ch_switch_update(list->mixer,
         list->kctl->private_value);
}
