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
struct TYPE_2__ {int /*<<< orphan*/  aggr_wq; int /*<<< orphan*/  aggr_list_lock; int /*<<< orphan*/  aggr_list; scalar_t__ aggr_len; int /*<<< orphan*/  elp_interval; int /*<<< orphan*/  throughput_override; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  batadv_v_ogm_aggr_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct batadv_hard_iface *hard_iface)
{
	/* enable link throughput auto-detection by setting the throughput
	 * override to zero
	 */
	FUNC1(&hard_iface->bat_v.throughput_override, 0);
	FUNC1(&hard_iface->bat_v.elp_interval, 500);

	hard_iface->bat_v.aggr_len = 0;
	FUNC2(&hard_iface->bat_v.aggr_list);
	FUNC3(&hard_iface->bat_v.aggr_list_lock);
	FUNC0(&hard_iface->bat_v.aggr_wq,
			  batadv_v_ogm_aggr_work);
}