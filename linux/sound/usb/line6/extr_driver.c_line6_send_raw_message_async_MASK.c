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
struct usb_line6 {int dummy; } ;
struct urb {int dummy; } ;
struct message {char const* buffer; int size; scalar_t__ done; struct usb_line6* line6; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct message*) ; 
 struct message* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct message*,struct urb*) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct usb_line6 *line6, const char *buffer,
				 int size)
{
	struct message *msg;
	struct urb *urb;

	/* create message: */
	msg = FUNC1(sizeof(struct message), GFP_ATOMIC);
	if (msg == NULL)
		return -ENOMEM;

	/* create URB: */
	urb = FUNC3(0, GFP_ATOMIC);

	if (urb == NULL) {
		FUNC0(msg);
		return -ENOMEM;
	}

	/* set message data: */
	msg->line6 = line6;
	msg->buffer = buffer;
	msg->size = size;
	msg->done = 0;

	/* start sending: */
	return FUNC2(msg, urb);
}