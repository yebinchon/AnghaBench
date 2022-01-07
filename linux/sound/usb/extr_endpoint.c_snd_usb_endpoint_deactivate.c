
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {scalar_t__ use_count; } ;


 int deactivate_urbs (struct snd_usb_endpoint*,int) ;
 int wait_clear_urbs (struct snd_usb_endpoint*) ;

void snd_usb_endpoint_deactivate(struct snd_usb_endpoint *ep)
{
 if (!ep)
  return;

 if (ep->use_count != 0)
  return;

 deactivate_urbs(ep, 1);
 wait_clear_urbs(ep);
}
