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
struct TYPE_3__ {int /*<<< orphan*/ * last_run_head; int /*<<< orphan*/ * fragments_tail; int /*<<< orphan*/  rb_fragments; scalar_t__ meat; scalar_t__ len; scalar_t__ flags; TYPE_2__* fqdir; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  timer; } ;
struct ipq {scalar_t__ ecn; scalar_t__ iif; TYPE_1__ q; } ;
struct TYPE_4__ {scalar_t__ timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  RB_ROOT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct ipq *qp)
{
	unsigned int sum_truesize = 0;

	if (!FUNC1(&qp->q.timer, jiffies + qp->q.fqdir->timeout)) {
		FUNC2(&qp->q.refcnt);
		return -ETIMEDOUT;
	}

	sum_truesize = FUNC0(&qp->q.rb_fragments);
	FUNC3(qp->q.fqdir, sum_truesize);

	qp->q.flags = 0;
	qp->q.len = 0;
	qp->q.meat = 0;
	qp->q.rb_fragments = RB_ROOT;
	qp->q.fragments_tail = NULL;
	qp->q.last_run_head = NULL;
	qp->iif = 0;
	qp->ecn = 0;

	return 0;
}