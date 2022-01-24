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
struct TYPE_3__ {TYPE_2__* rx_alldev_list; TYPE_2__* pkg_stats; int /*<<< orphan*/  stattimer; void* rcv_lists_stats; int /*<<< orphan*/  rcvlists_lock; } ;
struct net {TYPE_1__ can; } ;
struct TYPE_4__ {scalar_t__ jiffies_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PROC_FS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  can_stat_update ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ stats_timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net *net)
{
	FUNC6(&net->can.rcvlists_lock);
	net->can.rx_alldev_list =
		FUNC3(sizeof(*net->can.rx_alldev_list), GFP_KERNEL);
	if (!net->can.rx_alldev_list)
		goto out;
	net->can.pkg_stats = FUNC3(sizeof(*net->can.pkg_stats), GFP_KERNEL);
	if (!net->can.pkg_stats)
		goto out_free_rx_alldev_list;
	net->can.rcv_lists_stats = FUNC3(sizeof(*net->can.rcv_lists_stats), GFP_KERNEL);
	if (!net->can.rcv_lists_stats)
		goto out_free_pkg_stats;

	if (FUNC0(CONFIG_PROC_FS)) {
		/* the statistics are updated every second (timer triggered) */
		if (stats_timer) {
			FUNC7(&net->can.stattimer, can_stat_update,
				    0);
			FUNC4(&net->can.stattimer,
				  FUNC5(jiffies + HZ));
		}
		net->can.pkg_stats->jiffies_init = jiffies;
		FUNC1(net);
	}

	return 0;

 out_free_pkg_stats:
	FUNC2(net->can.pkg_stats);
 out_free_rx_alldev_list:
	FUNC2(net->can.rx_alldev_list);
 out:
	return -ENOMEM;
}