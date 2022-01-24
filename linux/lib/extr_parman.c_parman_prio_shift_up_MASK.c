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
struct parman_prio {int /*<<< orphan*/  item_list; } ;
struct parman_item {unsigned long index; int /*<<< orphan*/  list; } ;
struct parman {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parman*,struct parman_prio*,struct parman_item*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct parman_prio*) ; 
 struct parman_item* FUNC3 (struct parman_prio*) ; 
 int /*<<< orphan*/  FUNC4 (struct parman_prio*) ; 

__attribute__((used)) static void FUNC5(struct parman *parman,
				 struct parman_prio *prio)
{
	struct parman_item *item;
	unsigned long to_index;

	if (!FUNC4(prio))
		return;
	item = FUNC3(prio);
	to_index = FUNC2(prio) - 1;
	FUNC0(parman, prio, item, to_index, 1);
	FUNC1(&item->list, &prio->item_list);
	item->index = to_index;
}