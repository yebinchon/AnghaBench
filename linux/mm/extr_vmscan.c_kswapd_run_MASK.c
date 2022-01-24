#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * kswapd; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ SYSTEM_RUNNING ; 
 int /*<<< orphan*/  kswapd ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ system_state ; 

int FUNC6(int nid)
{
	pg_data_t *pgdat = FUNC2(nid);
	int ret = 0;

	if (pgdat->kswapd)
		return 0;

	pgdat->kswapd = FUNC4(kswapd, pgdat, "kswapd%d", nid);
	if (FUNC1(pgdat->kswapd)) {
		/* failure at boot is fatal */
		FUNC0(system_state < SYSTEM_RUNNING);
		FUNC5("Failed to start kswapd on node %d\n", nid);
		ret = FUNC3(pgdat->kswapd);
		pgdat->kswapd = NULL;
	}
	return ret;
}