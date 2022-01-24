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
struct alloc_context {int /*<<< orphan*/ * nodemask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline bool
FUNC3(int cpuset_mems_cookie, struct alloc_context *ac)
{
	/*
	 * It's possible that cpuset's mems_allowed and the nodemask from
	 * mempolicy don't intersect. This should be normally dealt with by
	 * policy_nodemask(), but it's possible to race with cpuset update in
	 * such a way the check therein was true, and then it became false
	 * before we got our cpuset_mems_cookie here.
	 * This assumes that for all allocations, ac->nodemask can come only
	 * from MPOL_BIND mempolicy (whose documented semantics is to be ignored
	 * when it does not intersect with the cpuset restrictions) or the
	 * caller can deal with a violated nodemask.
	 */
	if (FUNC1() && ac->nodemask &&
			!FUNC0(ac->nodemask)) {
		ac->nodemask = NULL;
		return true;
	}

	/*
	 * When updating a task's mems_allowed or mempolicy nodemask, it is
	 * possible to race with parallel threads in such a way that our
	 * allocation can fail while the mask is being updated. If we are about
	 * to fail, check if the cpuset changed during allocation and if so,
	 * retry.
	 */
	if (FUNC2(cpuset_mems_cookie))
		return true;

	return false;
}