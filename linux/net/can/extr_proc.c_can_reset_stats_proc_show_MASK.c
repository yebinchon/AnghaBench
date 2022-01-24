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
struct seq_file {struct net* private; } ;
struct TYPE_3__ {scalar_t__ function; } ;
struct TYPE_4__ {TYPE_1__ stattimer; struct can_pkg_stats* pkg_stats; struct can_rcv_lists_stats* rcv_lists_stats; } ;
struct net {TYPE_2__ can; } ;
struct can_rcv_lists_stats {scalar_t__ stats_reset; } ;
struct can_pkg_stats {scalar_t__ jiffies_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 scalar_t__ can_stat_update ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__) ; 
 int user_reset ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct net *net = m->private;
	struct can_rcv_lists_stats *rcv_lists_stats = net->can.rcv_lists_stats;
	struct can_pkg_stats *pkg_stats = net->can.pkg_stats;

	user_reset = 1;

	if (net->can.stattimer.function == can_stat_update) {
		FUNC1(m, "Scheduled statistic reset #%ld.\n",
				rcv_lists_stats->stats_reset + 1);
	} else {
		if (pkg_stats->jiffies_init != jiffies)
			FUNC0(net);

		FUNC1(m, "Performed statistic reset #%ld.\n",
				rcv_lists_stats->stats_reset);
	}
	return 0;
}