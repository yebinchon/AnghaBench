
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dev; } ;
struct snd_usb_audio {struct media_device* media_dev; } ;
struct media_device {int devnode; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct media_device*) ;
 int KBUILD_MODNAME ;
 int THIS_MODULE ;
 int dev_err (int *,char*,int) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int media_device_delete (struct media_device*,int ,int ) ;
 int media_device_register (struct media_device*) ;
 struct media_device* media_device_usb_allocate (struct usb_device*,int ,int ) ;
 int media_devnode_is_registered (int ) ;
 int snd_media_mixer_delete (struct snd_usb_audio*) ;
 int snd_media_mixer_init (struct snd_usb_audio*) ;

int snd_media_device_create(struct snd_usb_audio *chip,
   struct usb_interface *iface)
{
 struct media_device *mdev;
 struct usb_device *usbdev = interface_to_usbdev(iface);
 int ret = 0;






 if (chip->media_dev) {
  mdev = chip->media_dev;
  goto snd_mixer_init;
 }

 mdev = media_device_usb_allocate(usbdev, KBUILD_MODNAME, THIS_MODULE);
 if (IS_ERR(mdev))
  return -ENOMEM;


 chip->media_dev = mdev;

snd_mixer_init:

 ret = snd_media_mixer_init(chip);

 if (ret)
  dev_err(&usbdev->dev,
   "Couldn't create media mixer entities. Error: %d\n",
   ret);

 if (!media_devnode_is_registered(mdev->devnode)) {

  if (ret)
   goto create_fail;


  ret = media_device_register(mdev);
create_fail:
  if (ret) {
   snd_media_mixer_delete(chip);
   media_device_delete(mdev, KBUILD_MODNAME, THIS_MODULE);

   chip->media_dev = ((void*)0);
   dev_err(&usbdev->dev,
    "Couldn't register media device. Error: %d\n",
    ret);
   return ret;
  }
 }

 return ret;
}
