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
struct dlm_lock {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  bast_pending; int /*<<< orphan*/  bast_list; } ;
struct dlm_ctxt {int /*<<< orphan*/  ast_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
	int ret;
	FUNC1(&dlm->ast_lock);
	FUNC1(&lock->spinlock);
	ret = (FUNC0(&lock->bast_list) && !lock->bast_pending);
	FUNC2(&lock->spinlock);
	FUNC2(&dlm->ast_lock);
	return ret;
}