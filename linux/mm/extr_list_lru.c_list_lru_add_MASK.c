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
struct list_lru_one {int /*<<< orphan*/  nr_items; int /*<<< orphan*/  list; } ;
struct list_lru_node {int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_items; } ;
struct list_lru {struct list_lru_node* node; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct list_head*) ; 
 struct list_lru_one* FUNC2 (struct list_lru_node*,struct list_head*,struct mem_cgroup**) ; 
 int /*<<< orphan*/  FUNC3 (struct list_lru*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct list_head*) ; 

bool FUNC9(struct list_lru *lru, struct list_head *item)
{
	int nid = FUNC5(FUNC8(item));
	struct list_lru_node *nlru = &lru->node[nid];
	struct mem_cgroup *memcg;
	struct list_lru_one *l;

	FUNC6(&nlru->lock);
	if (FUNC1(item)) {
		l = FUNC2(nlru, item, &memcg);
		FUNC0(item, &l->list);
		/* Set shrinker bit if the first element was added */
		if (!l->nr_items++)
			FUNC4(memcg, nid,
					       FUNC3(lru));
		nlru->nr_items++;
		FUNC7(&nlru->lock);
		return true;
	}
	FUNC7(&nlru->lock);
	return false;
}