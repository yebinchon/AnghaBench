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
struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * key; } ;
struct ocfs2_lock_res {TYPE_1__ l_lockdep_map; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ocfs2_super *osb,
				   struct ocfs2_lock_res *lockres,
				   int level,
				   unsigned long caller_ip)
{
	unsigned long flags;

	FUNC3(&lockres->l_lock, flags);
	FUNC0(lockres, level);
	FUNC1(osb, lockres);
	FUNC4(&lockres->l_lock, flags);
#ifdef CONFIG_DEBUG_LOCK_ALLOC
	if (lockres->l_lockdep_map.key != NULL)
		rwsem_release(&lockres->l_lockdep_map, 1, caller_ip);
#endif
}