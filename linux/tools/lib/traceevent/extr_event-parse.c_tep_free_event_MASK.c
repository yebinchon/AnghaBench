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
struct TYPE_2__ {int /*<<< orphan*/  args; struct tep_event* format; } ;
struct tep_event {TYPE_1__ print_fmt; int /*<<< orphan*/  format; struct tep_event* system; struct tep_event* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tep_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct tep_event *event)
{
	FUNC0(event->name);
	FUNC0(event->system);

	FUNC2(&event->format);

	FUNC0(event->print_fmt.format);
	FUNC1(event->print_fmt.args);

	FUNC0(event);
}