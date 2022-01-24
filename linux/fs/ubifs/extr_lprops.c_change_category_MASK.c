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
struct ubifs_lpt_heap {int dummy; } ;
struct ubifs_lprops {int flags; int /*<<< orphan*/  hpos; } ;
struct ubifs_info {struct ubifs_lpt_heap* lpt_heap; } ;

/* Variables and functions */
 int LPROPS_CAT_MASK ; 
 int LPROPS_HEAP_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,struct ubifs_lpt_heap*,struct ubifs_lprops*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct ubifs_lprops*,int) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_lprops*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,struct ubifs_lprops*,int) ; 

__attribute__((used)) static void FUNC4(struct ubifs_info *c, struct ubifs_lprops *lprops)
{
	int old_cat = lprops->flags & LPROPS_CAT_MASK;
	int new_cat = FUNC2(c, lprops);

	if (old_cat == new_cat) {
		struct ubifs_lpt_heap *heap;

		/* lprops on a heap now must be moved up or down */
		if (new_cat < 1 || new_cat > LPROPS_HEAP_CNT)
			return; /* Not on a heap */
		heap = &c->lpt_heap[new_cat - 1];
		FUNC0(c, heap, lprops, lprops->hpos, new_cat);
	} else {
		FUNC3(c, lprops, old_cat);
		FUNC1(c, lprops, new_cat);
	}
}