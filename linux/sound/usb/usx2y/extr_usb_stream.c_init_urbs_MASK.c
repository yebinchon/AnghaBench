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
struct usb_stream_packet {int dummy; } ;
struct usb_stream_kernel {char* write_page; void** outurb; void** inurb; int /*<<< orphan*/  n_o_ps; struct usb_stream* s; } ;
struct usb_stream {int inpackets; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_STREAM_NURBS ; 
 scalar_t__ FUNC0 (struct usb_stream_kernel*,unsigned int,void**,char*,struct usb_device*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_stream_kernel *sk, unsigned use_packsize,
		      struct usb_device *dev, int in_pipe, int out_pipe)
{
	struct usb_stream	*s = sk->s;
	char			*indata = (char *)s + sizeof(*s) +
					sizeof(struct usb_stream_packet) *
					s->inpackets;
	int			u;

	for (u = 0; u < USB_STREAM_NURBS; ++u) {
		sk->inurb[u] = FUNC1(sk->n_o_ps, GFP_KERNEL);
		if (!sk->inurb[u])
			return -ENOMEM;

		sk->outurb[u] = FUNC1(sk->n_o_ps, GFP_KERNEL);
		if (!sk->outurb[u])
			return -ENOMEM;
	}

	if (FUNC0(sk, use_packsize, sk->inurb, indata, dev, in_pipe) ||
	    FUNC0(sk, use_packsize, sk->outurb, sk->write_page, dev,
			   out_pipe))
		return -EINVAL;

	return 0;
}