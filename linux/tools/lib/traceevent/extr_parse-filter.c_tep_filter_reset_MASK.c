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
struct tep_event_filter {int filters; int /*<<< orphan*/ * event_filters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct tep_event_filter *filter)
{
	int i;

	for (i = 0; i < filter->filters; i++)
		FUNC1(&filter->event_filters[i]);

	FUNC0(filter->event_filters);
	filter->filters = 0;
	filter->event_filters = NULL;
}