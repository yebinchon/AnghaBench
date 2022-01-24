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
struct dlm_lock_resource {int inflight_locks; int /*<<< orphan*/  refmap; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct dlm_lock_resource *res)
{
	int bit;
	FUNC0(&res->spinlock);

	FUNC2("  refmap nodes: [ ");
	bit = 0;
	while (1) {
		bit = FUNC1(res->refmap, O2NM_MAX_NODES, bit);
		if (bit >= O2NM_MAX_NODES)
			break;
		FUNC2("%u ", bit);
		bit++;
	}
	FUNC2("], inflight=%u\n", res->inflight_locks);
}