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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct rps_dev_flow {int /*<<< orphan*/  last_qtail; } ;

/* Variables and functions */
 int NET_RX_SUCCESS ; 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct rps_dev_flow**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  netdev_tstamp_prequeue ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  rps_needed ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb)
{
	int ret;

	FUNC3(netdev_tstamp_prequeue, skb);

	if (FUNC6(skb))
		return NET_RX_SUCCESS;

	FUNC4();
#ifdef CONFIG_RPS
	if (static_branch_unlikely(&rps_needed)) {
		struct rps_dev_flow voidflow, *rflow = &voidflow;
		int cpu = get_rps_cpu(skb->dev, skb, &rflow);

		if (cpu >= 0) {
			ret = enqueue_to_backlog(skb, cpu, &rflow->last_qtail);
			rcu_read_unlock();
			return ret;
		}
	}
#endif
	ret = FUNC0(skb);
	FUNC5();
	return ret;
}