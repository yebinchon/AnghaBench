
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_mixer_data {int mixer; int work; } ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int scarlett2_config_save (int ) ;

__attribute__((used)) static void scarlett2_private_suspend(struct usb_mixer_interface *mixer)
{
 struct scarlett2_mixer_data *private = mixer->private_data;

 if (cancel_delayed_work_sync(&private->work))
  scarlett2_config_save(private->mixer);
}
