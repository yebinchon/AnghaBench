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
struct timer_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  stattimer; struct can_pkg_stats* pkg_stats; } ;
struct net {TYPE_1__ can; } ;
struct can_pkg_stats {unsigned long jiffies_init; int rx_frames; int tx_frames; int matches; int total_rx_match_ratio; int rx_frames_delta; int current_rx_match_ratio; int matches_delta; scalar_t__ current_tx_rate; int tx_frames_delta; scalar_t__ current_rx_rate; scalar_t__ max_tx_rate; scalar_t__ max_rx_rate; int max_rx_match_ratio; void* total_rx_rate; void* total_tx_rate; } ;
struct TYPE_4__ {int /*<<< orphan*/  stattimer; } ;

/* Variables and functions */
 int HZ ; 
 int ULONG_MAX ; 
 void* FUNC0 (unsigned long,int,int) ; 
 TYPE_2__ can ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net* net ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ user_reset ; 

void FUNC5(struct timer_list *t)
{
	struct net *net = FUNC2(net, t, can.stattimer);
	struct can_pkg_stats *pkg_stats = net->can.pkg_stats;
	unsigned long j = jiffies; /* snapshot */

	/* restart counting in timer context on user request */
	if (user_reset)
		FUNC1(net);

	/* restart counting on jiffies overflow */
	if (j < pkg_stats->jiffies_init)
		FUNC1(net);

	/* prevent overflow in calc_rate() */
	if (pkg_stats->rx_frames > (ULONG_MAX / HZ))
		FUNC1(net);

	/* prevent overflow in calc_rate() */
	if (pkg_stats->tx_frames > (ULONG_MAX / HZ))
		FUNC1(net);

	/* matches overflow - very improbable */
	if (pkg_stats->matches > (ULONG_MAX / 100))
		FUNC1(net);

	/* calc total values */
	if (pkg_stats->rx_frames)
		pkg_stats->total_rx_match_ratio = (pkg_stats->matches * 100) /
			pkg_stats->rx_frames;

	pkg_stats->total_tx_rate = FUNC0(pkg_stats->jiffies_init, j,
					    pkg_stats->tx_frames);
	pkg_stats->total_rx_rate = FUNC0(pkg_stats->jiffies_init, j,
					    pkg_stats->rx_frames);

	/* calc current values */
	if (pkg_stats->rx_frames_delta)
		pkg_stats->current_rx_match_ratio =
			(pkg_stats->matches_delta * 100) /
			pkg_stats->rx_frames_delta;

	pkg_stats->current_tx_rate = FUNC0(0, HZ, pkg_stats->tx_frames_delta);
	pkg_stats->current_rx_rate = FUNC0(0, HZ, pkg_stats->rx_frames_delta);

	/* check / update maximum values */
	if (pkg_stats->max_tx_rate < pkg_stats->current_tx_rate)
		pkg_stats->max_tx_rate = pkg_stats->current_tx_rate;

	if (pkg_stats->max_rx_rate < pkg_stats->current_rx_rate)
		pkg_stats->max_rx_rate = pkg_stats->current_rx_rate;

	if (pkg_stats->max_rx_match_ratio < pkg_stats->current_rx_match_ratio)
		pkg_stats->max_rx_match_ratio = pkg_stats->current_rx_match_ratio;

	/* clear values for 'current rate' calculation */
	pkg_stats->tx_frames_delta = 0;
	pkg_stats->rx_frames_delta = 0;
	pkg_stats->matches_delta   = 0;

	/* restart timer (one second) */
	FUNC3(&net->can.stattimer, FUNC4(jiffies + HZ));
}