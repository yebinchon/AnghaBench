
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_2__* chip; struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_mixer_data {int vol_updated; TYPE_3__** button_ctls; TYPE_1__* info; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int card; } ;
struct TYPE_4__ {int button_count; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int ,int *) ;

__attribute__((used)) static void scarlett2_mixer_interrupt_button_change(
 struct usb_mixer_interface *mixer)
{
 struct scarlett2_mixer_data *private = mixer->private_data;
 int i;

 private->vol_updated = 1;

 for (i = 0; i < private->info->button_count; i++)
  snd_ctl_notify(mixer->chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &private->button_ctls[i]->id);
}
