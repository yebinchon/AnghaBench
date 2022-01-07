
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_mixer_data {int work; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct scarlett2_mixer_data*) ;

__attribute__((used)) static void scarlett2_private_free(struct usb_mixer_interface *mixer)
{
 struct scarlett2_mixer_data *private = mixer->private_data;

 cancel_delayed_work_sync(&private->work);
 kfree(private);
 mixer->private_data = ((void*)0);
}
