
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct snd_device {struct usb_mixer_interface* device_data; } ;


 int snd_usb_mixer_free (struct usb_mixer_interface*) ;

__attribute__((used)) static int snd_usb_mixer_dev_free(struct snd_device *device)
{
 struct usb_mixer_interface *mixer = device->device_data;
 snd_usb_mixer_free(mixer);
 return 0;
}
