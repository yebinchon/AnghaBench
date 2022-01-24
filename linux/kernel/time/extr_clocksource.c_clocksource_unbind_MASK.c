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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct clocksource*) ; 
 scalar_t__ FUNC1 (struct clocksource*) ; 
 scalar_t__ FUNC2 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*) ; 
 struct clocksource* curr_clocksource ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct clocksource *cs)
{
	unsigned long flags;

	if (FUNC2(cs)) {
		/* Select and try to install a replacement watchdog. */
		FUNC4(true);
		if (FUNC2(cs))
			return -EBUSY;
	}

	if (cs == curr_clocksource) {
		/* Select and try to install a replacement clock source */
		FUNC3();
		if (curr_clocksource == cs)
			return -EBUSY;
	}

	if (FUNC1(cs)) {
		/*
		 * Select and try to install a replacement suspend clocksource.
		 * If no replacement suspend clocksource, we will just let the
		 * clocksource go and have no suspend clocksource.
		 */
		FUNC5(true);
	}

	FUNC6(&flags);
	FUNC0(cs);
	FUNC8(&cs->list);
	FUNC7(&flags);

	return 0;
}