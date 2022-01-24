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
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clocksource*,int) ; 
 int /*<<< orphan*/  clocksource_mutex ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct clocksource *cs, int rating)
{
	unsigned long flags;

	FUNC6(&clocksource_mutex);
	FUNC4(&flags);
	FUNC0(cs, rating);
	FUNC5(&flags);

	FUNC1();
	FUNC2(false);
	FUNC3(false);
	FUNC7(&clocksource_mutex);
}