
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {int dummy; } ;


 int release_urbs (struct snd_usb_endpoint*,int) ;

void snd_usb_endpoint_release(struct snd_usb_endpoint *ep)
{
 release_urbs(ep, 1);
}
