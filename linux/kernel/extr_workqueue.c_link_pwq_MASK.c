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
struct workqueue_struct {int /*<<< orphan*/  pwqs; int /*<<< orphan*/  work_color; int /*<<< orphan*/  mutex; } ;
struct pool_workqueue {int /*<<< orphan*/  pwqs_node; int /*<<< orphan*/  work_color; struct workqueue_struct* wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pool_workqueue*) ; 

__attribute__((used)) static void FUNC4(struct pool_workqueue *pwq)
{
	struct workqueue_struct *wq = pwq->wq;

	FUNC2(&wq->mutex);

	/* may be called multiple times, ignore if already linked */
	if (!FUNC1(&pwq->pwqs_node))
		return;

	/* set the matching work_color */
	pwq->work_color = wq->work_color;

	/* sync max_active to the current setting */
	FUNC3(pwq);

	/* link in @pwq */
	FUNC0(&pwq->pwqs_node, &wq->pwqs);
}