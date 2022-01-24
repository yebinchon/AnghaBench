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
typedef  int /*<<< orphan*/  u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (struct clocksource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC3 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC4 (struct clocksource*) ; 
 int /*<<< orphan*/  clocksource_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct clocksource *cs, u32 scale, u32 freq)
{
	unsigned long flags;

	FUNC2(cs);

	/* Initialize mult/shift and max_idle_ns */
	FUNC1(cs, scale, freq);

	/* Add clocksource to the clocksource list */
	FUNC9(&clocksource_mutex);

	FUNC7(&flags);
	FUNC3(cs);
	FUNC4(cs);
	FUNC8(&flags);

	FUNC5();
	FUNC6(false);
	FUNC0(cs);
	FUNC10(&clocksource_mutex);
	return 0;
}