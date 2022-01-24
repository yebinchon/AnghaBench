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
struct list_lru_one {unsigned long nr_items; } ;
struct list_lru_node {int dummy; } ;
struct list_lru {struct list_lru_node* node; } ;

/* Variables and functions */
 struct list_lru_one* FUNC0 (struct list_lru_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

unsigned long FUNC4(struct list_lru *lru,
				 int nid, struct mem_cgroup *memcg)
{
	struct list_lru_node *nlru = &lru->node[nid];
	struct list_lru_one *l;
	unsigned long count;

	FUNC2();
	l = FUNC0(nlru, FUNC1(memcg));
	count = l->nr_items;
	FUNC3();

	return count;
}