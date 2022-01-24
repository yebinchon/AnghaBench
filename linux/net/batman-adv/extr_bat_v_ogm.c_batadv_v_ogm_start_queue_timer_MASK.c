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
struct TYPE_2__ {int /*<<< orphan*/  aggr_wq; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;

/* Variables and functions */
 int BATADV_MAX_AGGREGATION_MS ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct batadv_hard_iface *hard_iface)
{
	unsigned int msecs = BATADV_MAX_AGGREGATION_MS * 1000;

	/* msecs * [0.9, 1.1] */
	msecs += FUNC1() % (msecs / 5) - (msecs / 10);
	FUNC2(batadv_event_workqueue, &hard_iface->bat_v.aggr_wq,
			   FUNC0(msecs / 1000));
}