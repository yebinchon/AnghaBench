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
typedef  int /*<<< orphan*/  u64 ;
struct ring_buffer_event {int dummy; } ;
typedef  enum event_status { ____Placeholder_event_status } event_status ;

/* Variables and functions */
 int EVENT_DROPPED ; 
 int EVENT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  read ; 
 struct ring_buffer_event* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct ring_buffer_event*) ; 

__attribute__((used)) static enum event_status FUNC3(int cpu)
{
	struct ring_buffer_event *event;
	int *entry;
	u64 ts;

	event = FUNC1(buffer, cpu, &ts, NULL);
	if (!event)
		return EVENT_DROPPED;

	entry = FUNC2(event);
	if (*entry != cpu) {
		FUNC0();
		return EVENT_DROPPED;
	}

	read++;
	return EVENT_FOUND;
}