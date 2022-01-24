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
struct event_subsystem {int /*<<< orphan*/  name; struct event_subsystem* filter_string; int /*<<< orphan*/  list; struct event_subsystem* filter; } ;
struct event_filter {int /*<<< orphan*/  name; struct event_filter* filter_string; int /*<<< orphan*/  list; struct event_filter* filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct event_subsystem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct event_subsystem*) ; 
 scalar_t__ FUNC5 (struct event_subsystem*) ; 

__attribute__((used)) static void FUNC6(struct event_subsystem *system)
{
	struct event_filter *filter = system->filter;

	FUNC0(FUNC4(system) == 0);
	if (FUNC5(system))
		return;

	FUNC3(&system->list);

	if (filter) {
		FUNC1(filter->filter_string);
		FUNC1(filter);
	}
	FUNC2(system->name);
	FUNC1(system);
}