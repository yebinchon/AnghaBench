#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_line6 {TYPE_2__* urb_listen; int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  buffer_listen; TYPE_1__* properties; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  interval; } ;
struct TYPE_7__ {scalar_t__ actual_length; } ;
struct TYPE_6__ {int capabilities; int /*<<< orphan*/  ep_ctrl_r; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LINE6_BUFSIZE_LISTEN ; 
 int LINE6_CAP_CONTROL_MIDI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  line6_data_received ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_line6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct usb_line6 *line6)
{
	int err;

	if (line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
		FUNC2(line6->urb_listen, line6->usbdev,
			FUNC4(line6->usbdev, line6->properties->ep_ctrl_r),
			line6->buffer_listen, LINE6_BUFSIZE_LISTEN,
			line6_data_received, line6, line6->interval);
	} else {
		FUNC1(line6->urb_listen, line6->usbdev,
			FUNC3(line6->usbdev, line6->properties->ep_ctrl_r),
			line6->buffer_listen, LINE6_BUFSIZE_LISTEN,
			line6_data_received, line6);
	}

	/* sanity checks of EP before actually submitting */
	if (FUNC6(line6->urb_listen)) {
		FUNC0(line6->ifcdev, "invalid control EP\n");
		return -EINVAL;
	}

	line6->urb_listen->actual_length = 0;
	err = FUNC5(line6->urb_listen, GFP_ATOMIC);
	return err;
}