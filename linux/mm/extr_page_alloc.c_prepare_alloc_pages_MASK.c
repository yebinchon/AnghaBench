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
struct alloc_context {int /*<<< orphan*/  migratetype; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/  zonelist; int /*<<< orphan*/  high_zoneidx; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int gfp_t ;

/* Variables and functions */
 unsigned int ALLOC_CMA ; 
 unsigned int ALLOC_CPUSET ; 
 int /*<<< orphan*/  CONFIG_CMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIGRATE_MOVABLE ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_HARDWALL ; 
 int /*<<< orphan*/  cpuset_current_mems_allowed ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int,unsigned int) ; 

__attribute__((used)) static inline bool FUNC9(gfp_t gfp_mask, unsigned int order,
		int preferred_nid, nodemask_t *nodemask,
		struct alloc_context *ac, gfp_t *alloc_mask,
		unsigned int *alloc_flags)
{
	ac->high_zoneidx = FUNC4(gfp_mask);
	ac->zonelist = FUNC7(preferred_nid, gfp_mask);
	ac->nodemask = nodemask;
	ac->migratetype = FUNC5(gfp_mask);

	if (FUNC1()) {
		*alloc_mask |= __GFP_HARDWALL;
		if (!ac->nodemask)
			ac->nodemask = &cpuset_current_mems_allowed;
		else
			*alloc_flags |= ALLOC_CPUSET;
	}

	FUNC2(gfp_mask);
	FUNC3(gfp_mask);

	FUNC6(gfp_mask & __GFP_DIRECT_RECLAIM);

	if (FUNC8(gfp_mask, order))
		return false;

	if (FUNC0(CONFIG_CMA) && ac->migratetype == MIGRATE_MOVABLE)
		*alloc_flags |= ALLOC_CMA;

	return true;
}