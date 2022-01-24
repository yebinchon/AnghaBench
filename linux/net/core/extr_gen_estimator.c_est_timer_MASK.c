#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct timer_list {int dummy; } ;
struct net_rate_estimator {int last_bytes; int ewma_log; int intvl_log; int avbps; int avpps; scalar_t__ next_jiffies; int /*<<< orphan*/  timer; scalar_t__ last_packets; int /*<<< orphan*/  seq; } ;
struct gnet_stats_basic_packed {int bytes; scalar_t__ packets; } ;

/* Variables and functions */
 int HZ ; 
 struct net_rate_estimator* est ; 
 int /*<<< orphan*/  FUNC0 (struct net_rate_estimator*,struct gnet_stats_basic_packed*) ; 
 struct net_rate_estimator* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct net_rate_estimator *est = FUNC1(est, t, timer);
	struct gnet_stats_basic_packed b;
	u64 rate, brate;

	FUNC0(est, &b);
	brate = (b.bytes - est->last_bytes) << (10 - est->ewma_log - est->intvl_log);
	brate -= (est->avbps >> est->ewma_log);

	rate = (u64)(b.packets - est->last_packets) << (10 - est->ewma_log - est->intvl_log);
	rate -= (est->avpps >> est->ewma_log);

	FUNC5(&est->seq);
	est->avbps += brate;
	est->avpps += rate;
	FUNC6(&est->seq);

	est->last_bytes = b.bytes;
	est->last_packets = b.packets;

	est->next_jiffies += ((HZ/4) << est->intvl_log);

	if (FUNC4(FUNC3(jiffies, est->next_jiffies))) {
		/* Ouch... timer was delayed. */
		est->next_jiffies = jiffies + 1;
	}
	FUNC2(&est->timer, est->next_jiffies);
}