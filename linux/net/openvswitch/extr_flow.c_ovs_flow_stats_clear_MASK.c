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
struct sw_flow_stats {int /*<<< orphan*/  lock; scalar_t__ tcp_flags; scalar_t__ byte_count; scalar_t__ packet_count; scalar_t__ used; } ;
struct sw_flow {int /*<<< orphan*/ * stats; int /*<<< orphan*/  cpu_used_mask; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int nr_cpu_ids ; 
 struct sw_flow_stats* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sw_flow *flow)
{
	int cpu;

	/* We open code this to make sure cpu 0 is always considered */
	for (cpu = 0; cpu < nr_cpu_ids; cpu = FUNC0(cpu, &flow->cpu_used_mask)) {
		struct sw_flow_stats *stats = FUNC1(flow->stats[cpu]);

		if (stats) {
			FUNC2(&stats->lock);
			stats->used = 0;
			stats->packet_count = 0;
			stats->byte_count = 0;
			stats->tcp_flags = 0;
			FUNC3(&stats->lock);
		}
	}
}