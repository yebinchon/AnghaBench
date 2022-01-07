
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {scalar_t__ use_count; int flags; } ;


 int EP_FLAG_STOPPING ;
 int deactivate_urbs (struct snd_usb_endpoint*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ snd_BUG_ON (int) ;

void snd_usb_endpoint_stop(struct snd_usb_endpoint *ep)
{
 if (!ep)
  return;

 if (snd_BUG_ON(ep->use_count == 0))
  return;

 if (--ep->use_count == 0) {
  deactivate_urbs(ep, 0);
  set_bit(EP_FLAG_STOPPING, &ep->flags);
 }
}
