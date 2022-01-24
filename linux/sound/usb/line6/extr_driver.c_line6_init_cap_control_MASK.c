#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_line6 {int /*<<< orphan*/  ifcdev; void* buffer_message; TYPE_1__* properties; int /*<<< orphan*/  urb_listen; void* buffer_listen; } ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LINE6_BUFSIZE_LISTEN ; 
 int LINE6_CAP_CONTROL_MIDI ; 
 int /*<<< orphan*/  LINE6_MIDI_MESSAGE_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_line6*) ; 
 int FUNC3 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_line6 *line6)
{
	int ret;

	/* initialize USB buffers: */
	line6->buffer_listen = FUNC1(LINE6_BUFSIZE_LISTEN, GFP_KERNEL);
	if (!line6->buffer_listen)
		return -ENOMEM;

	line6->urb_listen = FUNC4(0, GFP_KERNEL);
	if (!line6->urb_listen)
		return -ENOMEM;

	if (line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
		line6->buffer_message = FUNC1(LINE6_MIDI_MESSAGE_MAXLEN, GFP_KERNEL);
		if (!line6->buffer_message)
			return -ENOMEM;
	} else {
		ret = FUNC2(line6);
		if (ret < 0)
			return ret;
	}

	ret = FUNC3(line6);
	if (ret < 0) {
		FUNC0(line6->ifcdev, "cannot start listening: %d\n", ret);
		return ret;
	}

	return 0;
}