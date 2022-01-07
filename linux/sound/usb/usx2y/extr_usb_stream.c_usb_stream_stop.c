
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_stream_kernel {TYPE_1__* s; int * outurb; int * inurb; } ;
struct TYPE_2__ {int state; } ;


 int USB_STREAM_NURBS ;
 int msleep (int) ;
 int usb_kill_urb (int ) ;
 int usb_stream_stopped ;

void usb_stream_stop(struct usb_stream_kernel *sk)
{
 int u;
 if (!sk->s)
  return;
 for (u = 0; u < USB_STREAM_NURBS; ++u) {
  usb_kill_urb(sk->inurb[u]);
  usb_kill_urb(sk->outurb[u]);
 }
 sk->s->state = usb_stream_stopped;
 msleep(400);
}
