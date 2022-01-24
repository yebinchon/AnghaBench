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
struct clocksource {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  clocksource_mutex ; 
 int FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct clocksource *cs)
{
	int ret = 0;

	FUNC2(&clocksource_mutex);
	if (!FUNC1(&cs->list))
		ret = FUNC0(cs);
	FUNC3(&clocksource_mutex);
	return ret;
}