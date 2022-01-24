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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  testing_map ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_HEARTBEAT ; 
 int /*<<< orphan*/  O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 

int FUNC6(u8 node_num)
{
	unsigned long testing_map[FUNC0(O2NM_MAX_NODES)];

	FUNC3(&o2hb_live_lock);
	FUNC2(testing_map, sizeof(testing_map));
	FUNC4(&o2hb_live_lock);
	if (!FUNC5(node_num, testing_map)) {
		FUNC1(ML_HEARTBEAT,
		     "node (%u) does not have heartbeating enabled.\n",
		     node_num);
		return 0;
	}

	return 1;
}