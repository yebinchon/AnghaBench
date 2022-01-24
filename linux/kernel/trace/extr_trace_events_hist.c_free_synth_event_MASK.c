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
struct TYPE_2__ {struct synth_event* system; } ;
struct synth_event {unsigned int n_fields; int /*<<< orphan*/  call; int /*<<< orphan*/  tp; TYPE_1__ class; struct synth_event* name; struct synth_event* fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct synth_event) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct synth_event*) ; 

__attribute__((used)) static void FUNC4(struct synth_event *event)
{
	unsigned int i;

	if (!event)
		return;

	for (i = 0; i < event->n_fields; i++)
		FUNC1(event->fields[i]);

	FUNC3(event->fields);
	FUNC3(event->name);
	FUNC3(event->class.system);
	FUNC2(event->tp);
	FUNC0(&event->call);
	FUNC3(event);
}