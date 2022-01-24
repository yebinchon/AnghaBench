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
struct dlm_lock_resource {int state; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 int DLM_LOCK_RES_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct dlm_ctxt *dlm,
				struct dlm_lock_resource *res)
{
	int ret;
	FUNC0(&res->spinlock);
	ret = !!(res->state & DLM_LOCK_RES_DIRTY);
	FUNC1(&res->spinlock);
	return ret;
}