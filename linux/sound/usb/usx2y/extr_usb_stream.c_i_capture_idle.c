
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stream_kernel {int i_urb; } ;
struct urb {struct usb_stream_kernel* context; } ;


 scalar_t__ balance_capture (struct usb_stream_kernel*,struct urb*) ;
 int stream_idle (struct usb_stream_kernel*,struct urb*,int ) ;

__attribute__((used)) static void i_capture_idle(struct urb *urb)
{
 struct usb_stream_kernel *sk = urb->context;
 if (balance_capture(sk, urb))
  stream_idle(sk, urb, sk->i_urb);
}
