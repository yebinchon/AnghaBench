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
struct usb_line6 {int message_length; int /*<<< orphan*/ * buffer_message; int /*<<< orphan*/  (* process_message ) (struct usb_line6*) ;int /*<<< orphan*/  ifcdev; TYPE_2__* properties; TYPE_1__* line6midi; } ;
struct urb {int actual_length; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  status; scalar_t__ context; } ;
struct midi_buffer {int dummy; } ;
struct TYPE_4__ {int capabilities; } ;
struct TYPE_3__ {struct midi_buffer midibuf_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int LINE6_CAP_CONTROL_MIDI ; 
 int /*<<< orphan*/  LINE6_MIDI_MESSAGE_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_line6*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct midi_buffer*,int) ; 
 int FUNC3 (struct midi_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct midi_buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_line6*) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct usb_line6 *line6 = (struct usb_line6 *)urb->context;
	struct midi_buffer *mb = &line6->line6midi->midibuf_in;
	int done;

	if (urb->status == -ESHUTDOWN)
		return;

	if (line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
		done =
			FUNC4(mb, urb->transfer_buffer, urb->actual_length);

		if (done < urb->actual_length) {
			FUNC2(mb, done);
			FUNC0(line6->ifcdev, "%d %d buffer overflow - message skipped\n",
				done, urb->actual_length);
		}

		for (;;) {
			done =
				FUNC3(mb, line6->buffer_message,
						LINE6_MIDI_MESSAGE_MAXLEN);

			if (done == 0)
				break;

			line6->message_length = done;
			FUNC1(line6, line6->buffer_message, done);

			if (line6->process_message)
				line6->process_message(line6);
		}
	} else {
		line6->buffer_message = urb->transfer_buffer;
		line6->message_length = urb->actual_length;
		if (line6->process_message)
			line6->process_message(line6);
		line6->buffer_message = NULL;
	}

	FUNC5(line6);
}