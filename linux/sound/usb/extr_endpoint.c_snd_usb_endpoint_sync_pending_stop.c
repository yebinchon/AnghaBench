
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {int flags; } ;


 int EP_FLAG_STOPPING ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_clear_urbs (struct snd_usb_endpoint*) ;

void snd_usb_endpoint_sync_pending_stop(struct snd_usb_endpoint *ep)
{
 if (ep && test_bit(EP_FLAG_STOPPING, &ep->flags))
  wait_clear_urbs(ep);
}
