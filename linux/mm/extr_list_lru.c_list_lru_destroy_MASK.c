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
struct list_lru {int shrinker_id; int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_lru*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_lru*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct list_lru *lru)
{
	/* Already destroyed or not yet initialized? */
	if (!lru->node)
		return;

	FUNC3();

	FUNC1(lru);

	FUNC2(lru);
	FUNC0(lru->node);
	lru->node = NULL;

#ifdef CONFIG_MEMCG_KMEM
	lru->shrinker_id = -1;
#endif
	FUNC4();
}