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
struct mem_cgroup_per_node {int /*<<< orphan*/  lruvec_stat_local; int /*<<< orphan*/  lruvec_stat_cpu; } ;
struct mem_cgroup {struct mem_cgroup_per_node** nodeinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup_per_node*) ; 

__attribute__((used)) static void FUNC2(struct mem_cgroup *memcg, int node)
{
	struct mem_cgroup_per_node *pn = memcg->nodeinfo[node];

	if (!pn)
		return;

	FUNC0(pn->lruvec_stat_cpu);
	FUNC0(pn->lruvec_stat_local);
	FUNC1(pn);
}