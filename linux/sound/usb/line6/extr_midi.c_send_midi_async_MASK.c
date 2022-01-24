#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_line6 {int /*<<< orphan*/  ifcdev; TYPE_2__* line6midi; int /*<<< orphan*/  interval; TYPE_1__* properties; int /*<<< orphan*/  usbdev; } ;
struct urb {scalar_t__ actual_length; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_active_send_urbs; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep_ctrl_w; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC1 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  midi_sent ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,struct usb_line6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct urb*) ; 

__attribute__((used)) static int FUNC8(struct usb_line6 *line6, unsigned char *data,
			   int length)
{
	struct urb *urb;
	int retval;
	unsigned char *transfer_buffer;

	urb = FUNC2(0, GFP_ATOMIC);

	if (urb == NULL)
		return -ENOMEM;

	transfer_buffer = FUNC1(data, length, GFP_ATOMIC);

	if (transfer_buffer == NULL) {
		FUNC4(urb);
		return -ENOMEM;
	}

	FUNC3(urb, line6->usbdev,
			 FUNC5(line6->usbdev,
					 line6->properties->ep_ctrl_w),
			 transfer_buffer, length, midi_sent, line6,
			 line6->interval);
	urb->actual_length = 0;
	retval = FUNC7(urb);
	if (retval < 0)
		goto error;

	retval = FUNC6(urb, GFP_ATOMIC);
	if (retval < 0)
		goto error;

	++line6->line6midi->num_active_send_urbs;
	return 0;

 error:
	FUNC0(line6->ifcdev, "usb_submit_urb failed\n");
	FUNC4(urb);
	return retval;
}