#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct dl_rq {scalar_t__ running_bw; scalar_t__ this_bw; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct dl_rq*) ; 

__attribute__((used)) static inline
void FUNC4(u64 dl_bw, struct dl_rq *dl_rq)
{
	u64 old = dl_rq->running_bw;

	FUNC2(&(FUNC3(dl_rq))->lock);
	dl_rq->running_bw += dl_bw;
	FUNC0(dl_rq->running_bw < old); /* overflow */
	FUNC0(dl_rq->running_bw > dl_rq->this_bw);
	/* kick cpufreq (see the comment in kernel/sched/sched.h). */
	FUNC1(FUNC3(dl_rq), 0);
}