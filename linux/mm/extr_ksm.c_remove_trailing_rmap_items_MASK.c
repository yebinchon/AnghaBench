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
struct rmap_item {struct rmap_item* rmap_list; } ;
struct mm_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rmap_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct rmap_item*) ; 

__attribute__((used)) static void FUNC2(struct mm_slot *mm_slot,
				       struct rmap_item **rmap_list)
{
	while (*rmap_list) {
		struct rmap_item *rmap_item = *rmap_list;
		*rmap_list = rmap_item->rmap_list;
		FUNC1(rmap_item);
		FUNC0(rmap_item);
	}
}