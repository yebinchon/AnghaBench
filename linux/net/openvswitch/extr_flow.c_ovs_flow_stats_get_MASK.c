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
struct sw_flow_stats {unsigned long used; int /*<<< orphan*/  lock; scalar_t__ byte_count; scalar_t__ packet_count; int /*<<< orphan*/  tcp_flags; } ;
struct sw_flow {int /*<<< orphan*/ * stats; int /*<<< orphan*/  cpu_used_mask; } ;
struct ovs_flow_stats {int /*<<< orphan*/  n_bytes; int /*<<< orphan*/  n_packets; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ovs_flow_stats*,int /*<<< orphan*/ ,int) ; 
 int nr_cpu_ids ; 
 struct sw_flow_stats* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

void FUNC6(const struct sw_flow *flow,
			struct ovs_flow_stats *ovs_stats,
			unsigned long *used, __be16 *tcp_flags)
{
	int cpu;

	*used = 0;
	*tcp_flags = 0;
	FUNC1(ovs_stats, 0, sizeof(*ovs_stats));

	/* We open code this to make sure cpu 0 is always considered */
	for (cpu = 0; cpu < nr_cpu_ids; cpu = FUNC0(cpu, &flow->cpu_used_mask)) {
		struct sw_flow_stats *stats = FUNC2(flow->stats[cpu]);

		if (stats) {
			/* Local CPU may write on non-local stats, so we must
			 * block bottom-halves here.
			 */
			FUNC3(&stats->lock);
			if (!*used || FUNC5(stats->used, *used))
				*used = stats->used;
			*tcp_flags |= stats->tcp_flags;
			ovs_stats->n_packets += stats->packet_count;
			ovs_stats->n_bytes += stats->byte_count;
			FUNC4(&stats->lock);
		}
	}
}