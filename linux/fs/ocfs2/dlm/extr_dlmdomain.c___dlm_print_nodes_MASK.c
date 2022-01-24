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
struct dlm_ctxt {int /*<<< orphan*/  domain_map; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct dlm_ctxt *dlm)
{
	int node = -1, num = 0;

	FUNC0(&dlm->spinlock);

	FUNC2("( ");
	while ((node = FUNC1(dlm->domain_map, O2NM_MAX_NODES,
				     node + 1)) < O2NM_MAX_NODES) {
		FUNC2("%d ", node);
		++num;
	}
	FUNC2(") %u nodes\n", num);
}