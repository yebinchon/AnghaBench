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
struct workqueue_struct {int dummy; } ;
struct work_struct {int dummy; } ;
struct rcu_work {int /*<<< orphan*/  rcu; struct workqueue_struct* wq; struct work_struct work; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_STRUCT_PENDING_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_work_rcufn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 

bool FUNC3(struct workqueue_struct *wq, struct rcu_work *rwork)
{
	struct work_struct *work = &rwork->work;

	if (!FUNC1(WORK_STRUCT_PENDING_BIT, FUNC2(work))) {
		rwork->wq = wq;
		FUNC0(&rwork->rcu, rcu_work_rcufn);
		return true;
	}

	return false;
}