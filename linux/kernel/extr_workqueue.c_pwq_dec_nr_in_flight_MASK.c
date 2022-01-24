#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pool_workqueue {scalar_t__ nr_active; scalar_t__ max_active; int flush_color; TYPE_2__* wq; scalar_t__* nr_in_flight; int /*<<< orphan*/  delayed_works; } ;
struct TYPE_4__ {TYPE_1__* first_flusher; int /*<<< orphan*/  nr_pwqs_to_flush; } ;
struct TYPE_3__ {int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int WORK_NO_COLOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pool_workqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct pool_workqueue*) ; 

__attribute__((used)) static void FUNC6(struct pool_workqueue *pwq, int color)
{
	/* uncolored work items don't participate in flushing or nr_active */
	if (color == WORK_NO_COLOR)
		goto out_put;

	pwq->nr_in_flight[color]--;

	pwq->nr_active--;
	if (!FUNC3(&pwq->delayed_works)) {
		/* one down, submit a delayed one */
		if (pwq->nr_active < pwq->max_active)
			FUNC5(pwq);
	}

	/* is flush in progress and are we at the flushing tip? */
	if (FUNC2(pwq->flush_color != color))
		goto out_put;

	/* are there still in-flight works? */
	if (pwq->nr_in_flight[color])
		goto out_put;

	/* this pwq is done, clear flush_color */
	pwq->flush_color = -1;

	/*
	 * If this was the last pwq, wake up the first flusher.  It
	 * will handle the rest.
	 */
	if (FUNC0(&pwq->wq->nr_pwqs_to_flush))
		FUNC1(&pwq->wq->first_flusher->done);
out_put:
	FUNC4(pwq);
}