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
struct workqueue_struct {int /*<<< orphan*/ * numa_pwq_tbl; int /*<<< orphan*/  mutex; } ;
struct pool_workqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pool_workqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pool_workqueue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pool_workqueue*) ; 
 int /*<<< orphan*/  wq_pool_mutex ; 

__attribute__((used)) static struct pool_workqueue *FUNC4(struct workqueue_struct *wq,
						   int node,
						   struct pool_workqueue *pwq)
{
	struct pool_workqueue *old_pwq;

	FUNC1(&wq_pool_mutex);
	FUNC1(&wq->mutex);

	/* link_pwq() can handle duplicate calls */
	FUNC0(pwq);

	old_pwq = FUNC2(wq->numa_pwq_tbl[node]);
	FUNC3(wq->numa_pwq_tbl[node], pwq);
	return old_pwq;
}