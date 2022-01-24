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
struct test_parman_item {int /*<<< orphan*/ * prio; } ;
struct test_parman {int /*<<< orphan*/ * prios; struct test_parman_item* items; } ;

/* Variables and functions */
 int TEST_PARMAN_ITEM_COUNT ; 
 unsigned int TEST_PARMAN_PRIO_MASK ; 
 unsigned int FUNC0 (struct test_parman*) ; 

__attribute__((used)) static void FUNC1(struct test_parman *test_parman)
{
	int i;

	for (i = 0; i < TEST_PARMAN_ITEM_COUNT; i++) {
		struct test_parman_item *item = &test_parman->items[i];
		unsigned int prio_index = FUNC0(test_parman) &
					  TEST_PARMAN_PRIO_MASK;

		/* Assign random prio to each item structure */
		item->prio = &test_parman->prios[prio_index];
	}
}