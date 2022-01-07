
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_endpoint {scalar_t__ type; int pipe; TYPE_1__* sync_master; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ SND_USB_ENDPOINT_TYPE_DATA ;
 scalar_t__ usb_pipeout (int ) ;

int snd_usb_endpoint_implicit_feedback_sink(struct snd_usb_endpoint *ep)
{
 return ep->sync_master &&
  ep->sync_master->type == SND_USB_ENDPOINT_TYPE_DATA &&
  ep->type == SND_USB_ENDPOINT_TYPE_DATA &&
  usb_pipeout(ep->pipe);
}
