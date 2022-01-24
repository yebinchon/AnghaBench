#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qfq_class {scalar_t__ deficit; int /*<<< orphan*/  alist; TYPE_3__* qdisc; } ;
struct qfq_aggregate {scalar_t__ lmax; int /*<<< orphan*/  active; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_7__ {TYPE_1__* ops; TYPE_2__ q; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* peek ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct qfq_aggregate *agg,
			struct qfq_class *cl, unsigned int len)
{
	FUNC2(cl->qdisc);

	cl->deficit -= (int) len;

	if (cl->qdisc->q.qlen == 0) /* no more packets, remove from list */
		FUNC0(&cl->alist);
	else if (cl->deficit < FUNC3(cl->qdisc->ops->peek(cl->qdisc))) {
		cl->deficit += agg->lmax;
		FUNC1(&cl->alist, &agg->active);
	}
}