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
struct TYPE_2__ {int /*<<< orphan*/  rcv_lists_stats; int /*<<< orphan*/  pkg_stats; int /*<<< orphan*/  rx_alldev_list; int /*<<< orphan*/  stattimer; } ;
struct net {TYPE_1__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PROC_FS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ stats_timer ; 

__attribute__((used)) static void FUNC4(struct net *net)
{
	if (FUNC0(CONFIG_PROC_FS)) {
		FUNC1(net);
		if (stats_timer)
			FUNC2(&net->can.stattimer);
	}

	FUNC3(net->can.rx_alldev_list);
	FUNC3(net->can.pkg_stats);
	FUNC3(net->can.rcv_lists_stats);
}