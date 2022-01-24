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
struct ubifs_lpt_heap {int cnt; struct ubifs_lprops** arr; } ;
struct ubifs_lprops {int flags; int hpos; scalar_t__ lnum; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops*) ; 
 int LPROPS_CAT_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_lpt_heap*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,char*,int,int,int,...) ; 
 struct ubifs_lprops* FUNC6 (struct ubifs_info*,scalar_t__) ; 

void FUNC7(struct ubifs_info *c, struct ubifs_lpt_heap *heap, int cat,
		    int add_pos)
{
	int i = 0, j, err = 0;

	if (!FUNC1(c) && !FUNC2(c))
		return;

	for (i = 0; i < heap->cnt; i++) {
		struct ubifs_lprops *lprops = heap->arr[i];
		struct ubifs_lprops *lp;

		if (i != add_pos)
			if ((lprops->flags & LPROPS_CAT_MASK) != cat) {
				err = 1;
				goto out;
			}
		if (lprops->hpos != i) {
			err = 2;
			goto out;
		}
		lp = FUNC6(c, lprops->lnum);
		if (FUNC0(lp)) {
			err = 3;
			goto out;
		}
		if (lprops != lp) {
			FUNC5(c, "lprops %zx lp %zx lprops->lnum %d lp->lnum %d",
				  (size_t)lprops, (size_t)lp, lprops->lnum,
				  lp->lnum);
			err = 4;
			goto out;
		}
		for (j = 0; j < i; j++) {
			lp = heap->arr[j];
			if (lp == lprops) {
				err = 5;
				goto out;
			}
			if (lp->lnum == lprops->lnum) {
				err = 6;
				goto out;
			}
		}
	}
out:
	if (err) {
		FUNC5(c, "failed cat %d hpos %d err %d", cat, i, err);
		FUNC3();
		FUNC4(c, heap, cat);
	}
}