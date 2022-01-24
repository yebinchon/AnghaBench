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
struct task_struct {struct mempolicy* mempolicy; } ;
struct mempolicy {scalar_t__ mode; } ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 struct mempolicy default_policy ; 
 int FUNC0 () ; 
 struct mempolicy* preferred_node_policy ; 

struct mempolicy *FUNC1(struct task_struct *p)
{
	struct mempolicy *pol = p->mempolicy;
	int node;

	if (pol)
		return pol;

	node = FUNC0();
	if (node != NUMA_NO_NODE) {
		pol = &preferred_node_policy[node];
		/* preferred_node_policy is not initialised early in boot */
		if (pol->mode)
			return pol;
	}

	return &default_policy;
}