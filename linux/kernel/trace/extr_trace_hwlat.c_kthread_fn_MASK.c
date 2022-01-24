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
typedef  int u64 ;
struct TYPE_2__ {int sample_window; int sample_width; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ hwlat_data ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	u64 interval;

	while (!FUNC2()) {

		FUNC5();

		FUNC3();
		FUNC1();
		FUNC4();

		FUNC7(&hwlat_data.lock);
		interval = hwlat_data.sample_window - hwlat_data.sample_width;
		FUNC8(&hwlat_data.lock);

		FUNC0(interval, USEC_PER_MSEC); /* modifies interval value */

		/* Always sleep for at least 1ms */
		if (interval < 1)
			interval = 1;

		if (FUNC6(interval))
			break;
	}

	return 0;
}