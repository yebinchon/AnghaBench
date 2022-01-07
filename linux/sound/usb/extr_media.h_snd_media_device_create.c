
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct snd_usb_audio {int dummy; } ;



__attribute__((used)) static inline int snd_media_device_create(struct snd_usb_audio *chip,
       struct usb_interface *iface)
      { return 0; }
