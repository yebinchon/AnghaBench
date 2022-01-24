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
struct TYPE_2__ {int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  fifo; int /*<<< orphan*/  active; } ;
struct usb_line6 {scalar_t__ message_length; TYPE_1__ messages; int /*<<< orphan*/  buffer_message; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_line6 *line6)
{
	if (!line6->messages.active)
		return;

	if (FUNC0(&line6->messages.fifo) >= line6->message_length) {
		/* No race condition here, there's only one writer */
		FUNC1(&line6->messages.fifo,
			line6->buffer_message, line6->message_length);
	} /* else TODO: signal overflow */

	FUNC2(&line6->messages.wait_queue);
}