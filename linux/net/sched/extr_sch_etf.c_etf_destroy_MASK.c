#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {struct Qdisc* qdisc; } ;
struct etf_sched_data {TYPE_1__ watchdog; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct etf_sched_data*) ; 
 struct net_device* FUNC1 (struct Qdisc*) ; 
 struct etf_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct etf_sched_data *q = FUNC2(sch);
	struct net_device *dev = FUNC1(sch);

	/* Only cancel watchdog if it's been initialized. */
	if (q->watchdog.qdisc == sch)
		FUNC3(&q->watchdog);

	FUNC0(dev, q);
}