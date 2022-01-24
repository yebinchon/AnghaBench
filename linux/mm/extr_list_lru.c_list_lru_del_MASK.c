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
struct list_lru_one {int /*<<< orphan*/  nr_items; } ;
struct list_lru_node {int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_items; } ;
struct list_lru {struct list_lru_node* node; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct list_lru_one* FUNC2 (struct list_lru_node*,struct list_head*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 

bool FUNC7(struct list_lru *lru, struct list_head *item)
{
	int nid = FUNC3(FUNC6(item));
	struct list_lru_node *nlru = &lru->node[nid];
	struct list_lru_one *l;

	FUNC4(&nlru->lock);
	if (!FUNC1(item)) {
		l = FUNC2(nlru, item, NULL);
		FUNC0(item);
		l->nr_items--;
		nlru->nr_items--;
		FUNC5(&nlru->lock);
		return true;
	}
	FUNC5(&nlru->lock);
	return false;
}