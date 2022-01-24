#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubifs_pnode {size_t iip; int /*<<< orphan*/  flags; TYPE_1__* parent; } ;
struct ubifs_nbranch {int lnum; int offs; } ;
struct ubifs_info {int /*<<< orphan*/  main_lebs; } ;
struct TYPE_2__ {struct ubifs_nbranch* nbranch; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ubifs_pnode*) ; 
 int FUNC2 (struct ubifs_pnode*) ; 
 int /*<<< orphan*/  UBIFS_LPT_FANOUT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ubifs_pnode* FUNC5 (struct ubifs_info*,int) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, int lnum, int offs)
{
	int i, cnt;

	cnt = FUNC0(c->main_lebs, UBIFS_LPT_FANOUT);
	for (i = 0; i < cnt; i++) {
		struct ubifs_pnode *pnode;
		struct ubifs_nbranch *branch;

		FUNC3();
		pnode = FUNC5(c, i);
		if (FUNC1(pnode))
			return FUNC2(pnode);
		branch = &pnode->parent->nbranch[pnode->iip];
		if (branch->lnum != lnum || branch->offs != offs)
			continue;
		if (FUNC4(DIRTY_CNODE, &pnode->flags))
			return 1;
		return 0;
	}
	return 1;
}