
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {struct media_ctl* media_ctl; } ;
struct media_device {int devnode; } ;
struct media_ctl {int media_entity; int intf_devnode; struct media_device* media_dev; } ;


 int kfree (struct media_ctl*) ;
 int media_device_unregister_entity (int *) ;
 scalar_t__ media_devnode_is_registered (int ) ;
 int media_devnode_remove (int ) ;
 int media_entity_cleanup (int *) ;

void snd_media_stream_delete(struct snd_usb_substream *subs)
{
 struct media_ctl *mctl = subs->media_ctl;

 if (mctl) {
  struct media_device *mdev;

  mdev = mctl->media_dev;
  if (mdev && media_devnode_is_registered(mdev->devnode)) {
   media_devnode_remove(mctl->intf_devnode);
   media_device_unregister_entity(&mctl->media_entity);
   media_entity_cleanup(&mctl->media_entity);
  }
  kfree(mctl);
  subs->media_ctl = ((void*)0);
 }
}
