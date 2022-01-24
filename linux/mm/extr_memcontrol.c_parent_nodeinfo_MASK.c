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
struct mem_cgroup_per_node {int /*<<< orphan*/  memcg; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 struct mem_cgroup_per_node* FUNC0 (struct mem_cgroup*,int) ; 
 struct mem_cgroup* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mem_cgroup_per_node *
FUNC2(struct mem_cgroup_per_node *pn, int nid)
{
	struct mem_cgroup *parent;

	parent = FUNC1(pn->memcg);
	if (!parent)
		return NULL;
	return FUNC0(parent, nid);
}