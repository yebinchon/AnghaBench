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
struct parman_prio {int dummy; } ;
struct parman_item {unsigned long index; int /*<<< orphan*/  list; } ;
struct parman {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parman*,struct parman_prio*,struct parman_item*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct parman_item* FUNC3 (struct parman_prio*) ; 

__attribute__((used)) static void FUNC4(struct parman *parman,
				    struct parman_prio *prio,
				    struct parman_item *item)
{
	struct parman_item *last_item;
	unsigned long to_index;

	last_item = FUNC3(prio);
	if (last_item == item) {
		FUNC1(&item->list);
		return;
	}
	to_index = item->index;
	FUNC0(parman, prio, last_item, to_index, 1);
	FUNC1(&last_item->list);
	FUNC2(&item->list, &last_item->list);
	last_item->index = to_index;
}