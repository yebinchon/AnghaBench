#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_stream_kernel {int /*<<< orphan*/  i_urb; } ;
struct urb {struct usb_stream_kernel* context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_stream_kernel*,struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_stream_kernel*,int /*<<< orphan*/ ,struct urb*) ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	struct usb_stream_kernel *sk = urb->context;
	if (FUNC0(sk, urb))
		FUNC1(sk, sk->i_urb, urb);
}