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
struct ordered_events_buffer {TYPE_1__* event; } ;
struct ordered_events {scalar_t__ copy_on_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ordered_events*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ordered_events_buffer*) ; 

__attribute__((used)) static void
FUNC2(struct ordered_events_buffer *buffer,
			    unsigned int max, struct ordered_events *oe)
{
	if (oe->copy_on_queue) {
		unsigned int i;

		for (i = 0; i < max; i++)
			FUNC0(oe, buffer->event[i].event);
	}

	FUNC1(buffer);
}