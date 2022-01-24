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
struct worker_pool {int dummy; } ;
struct pool_workqueue {int flush_color; int refcnt; int /*<<< orphan*/  unbound_release_work; int /*<<< orphan*/  mayday_node; int /*<<< orphan*/  pwqs_node; int /*<<< orphan*/  delayed_works; struct workqueue_struct* wq; struct worker_pool* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long WORK_STRUCT_FLAG_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct pool_workqueue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pwq_unbound_release_workfn ; 

__attribute__((used)) static void FUNC4(struct pool_workqueue *pwq, struct workqueue_struct *wq,
		     struct worker_pool *pool)
{
	FUNC0((unsigned long)pwq & WORK_STRUCT_FLAG_MASK);

	FUNC3(pwq, 0, sizeof(*pwq));

	pwq->pool = pool;
	pwq->wq = wq;
	pwq->flush_color = -1;
	pwq->refcnt = 1;
	FUNC1(&pwq->delayed_works);
	FUNC1(&pwq->pwqs_node);
	FUNC1(&pwq->mayday_node);
	FUNC2(&pwq->unbound_release_work, pwq_unbound_release_workfn);
}