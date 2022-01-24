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
struct rps_dev_flow {unsigned int last_qtail; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,int,unsigned int*) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct rps_dev_flow**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  netdev_tstamp_prequeue ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  rps_needed ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb)
{
	int ret;

	FUNC3(netdev_tstamp_prequeue, skb);

	FUNC11(skb);

#ifdef CONFIG_RPS
	if (static_branch_unlikely(&rps_needed)) {
		struct rps_dev_flow voidflow, *rflow = &voidflow;
		int cpu;

		preempt_disable();
		rcu_read_lock();

		cpu = get_rps_cpu(skb->dev, skb, &rflow);
		if (cpu < 0)
			cpu = smp_processor_id();

		ret = enqueue_to_backlog(skb, cpu, &rflow->last_qtail);

		rcu_read_unlock();
		preempt_enable();
	} else
#endif
	{
		unsigned int qtail;

		ret = FUNC0(skb, FUNC1(), &qtail);
		FUNC6();
	}
	return ret;
}