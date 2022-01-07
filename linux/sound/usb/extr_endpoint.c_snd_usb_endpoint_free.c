
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {int dummy; } ;


 int kfree (struct snd_usb_endpoint*) ;

void snd_usb_endpoint_free(struct snd_usb_endpoint *ep)
{
 kfree(ep);
}
