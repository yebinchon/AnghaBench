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
typedef  int /*<<< orphan*/  u64 ;
struct dlm_lockstatus {struct dlm_lock* lockid; } ;
struct dlm_lock {int lksb_kernel_allocated; struct dlm_lockstatus* lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dlm_lock_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dlm_lock*) ; 
 struct dlm_lock* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dlm_lockstatus* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct dlm_lock * FUNC4(int type, u8 node, u64 cookie,
			       struct dlm_lockstatus *lksb)
{
	struct dlm_lock *lock;
	int kernel_allocated = 0;

	lock = FUNC2(dlm_lock_cache, GFP_NOFS);
	if (!lock)
		return NULL;

	if (!lksb) {
		/* zero memory only if kernel-allocated */
		lksb = FUNC3(sizeof(*lksb), GFP_NOFS);
		if (!lksb) {
			FUNC1(dlm_lock_cache, lock);
			return NULL;
		}
		kernel_allocated = 1;
	}

	FUNC0(lock, type, node, cookie);
	if (kernel_allocated)
		lock->lksb_kernel_allocated = 1;
	lock->lksb = lksb;
	lksb->lockid = lock;
	return lock;
}