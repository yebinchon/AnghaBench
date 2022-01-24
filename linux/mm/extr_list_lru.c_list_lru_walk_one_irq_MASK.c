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
struct mem_cgroup {int dummy; } ;
struct list_lru_node {int /*<<< orphan*/  lock; } ;
struct list_lru {struct list_lru_node* node; } ;
typedef  int /*<<< orphan*/  list_lru_walk_cb ;

/* Variables and functions */
 unsigned long FUNC0 (struct list_lru_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

unsigned long
FUNC4(struct list_lru *lru, int nid, struct mem_cgroup *memcg,
		      list_lru_walk_cb isolate, void *cb_arg,
		      unsigned long *nr_to_walk)
{
	struct list_lru_node *nlru = &lru->node[nid];
	unsigned long ret;

	FUNC2(&nlru->lock);
	ret = FUNC0(nlru, FUNC1(memcg), isolate, cb_arg,
				  nr_to_walk);
	FUNC3(&nlru->lock);
	return ret;
}