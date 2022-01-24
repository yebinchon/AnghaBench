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
struct TYPE_4__ {scalar_t__ addr_filters_gen; } ;
struct perf_event {scalar_t__ addr_filters_gen; TYPE_2__ hw; TYPE_1__* pmu; } ;
struct perf_addr_filters_head {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* addr_filters_sync ) (struct perf_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 struct perf_addr_filters_head* FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 

void FUNC5(struct perf_event *event)
{
	struct perf_addr_filters_head *ifh = FUNC1(event);

	if (!FUNC0(event))
		return;

	FUNC2(&ifh->lock);
	if (event->addr_filters_gen != event->hw.addr_filters_gen) {
		event->pmu->addr_filters_sync(event);
		event->hw.addr_filters_gen = event->addr_filters_gen;
	}
	FUNC3(&ifh->lock);
}