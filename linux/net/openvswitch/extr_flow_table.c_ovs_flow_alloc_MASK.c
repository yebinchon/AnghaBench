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
struct sw_flow_stats {int /*<<< orphan*/  lock; } ;
struct sw_flow {int stats_last_writer; int /*<<< orphan*/  cpu_used_mask; int /*<<< orphan*/ * stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sw_flow* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sw_flow_stats*) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flow_cache ; 
 int /*<<< orphan*/  flow_stats_cache ; 
 struct sw_flow_stats* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sw_flow*) ; 
 struct sw_flow* FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct sw_flow *FUNC8(void)
{
	struct sw_flow *flow;
	struct sw_flow_stats *stats;

	flow = FUNC5(flow_cache, GFP_KERNEL);
	if (!flow)
		return FUNC0(-ENOMEM);

	flow->stats_last_writer = -1;

	/* Initialize the default stat node. */
	stats = FUNC3(flow_stats_cache,
				      GFP_KERNEL | __GFP_ZERO,
				      FUNC6(0) ? 0 : NUMA_NO_NODE);
	if (!stats)
		goto err;

	FUNC7(&stats->lock);

	FUNC1(flow->stats[0], stats);

	FUNC2(0, &flow->cpu_used_mask);

	return flow;
err:
	FUNC4(flow_cache, flow);
	return FUNC0(-ENOMEM);
}