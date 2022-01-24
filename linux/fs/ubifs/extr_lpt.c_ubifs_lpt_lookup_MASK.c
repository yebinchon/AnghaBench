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
struct ubifs_pnode {struct ubifs_lprops* lprops; } ;
struct ubifs_lprops {int /*<<< orphan*/  flags; int /*<<< orphan*/  dirty; int /*<<< orphan*/  free; } ;
struct ubifs_info {int main_first; } ;

/* Variables and functions */
 struct ubifs_lprops* FUNC0 (struct ubifs_pnode*) ; 
 scalar_t__ FUNC1 (struct ubifs_pnode*) ; 
 int UBIFS_LPT_FANOUT ; 
 int UBIFS_LPT_FANOUT_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubifs_pnode* FUNC3 (struct ubifs_info*,int) ; 

struct ubifs_lprops *FUNC4(struct ubifs_info *c, int lnum)
{
	int i, iip;
	struct ubifs_pnode *pnode;

	i = lnum - c->main_first;
	pnode = FUNC3(c, i >> UBIFS_LPT_FANOUT_SHIFT);
	if (FUNC1(pnode))
		return FUNC0(pnode);
	iip = (i & (UBIFS_LPT_FANOUT - 1));
	FUNC2("LEB %d, free %d, dirty %d, flags %d", lnum,
	       pnode->lprops[iip].free, pnode->lprops[iip].dirty,
	       pnode->lprops[iip].flags);
	return &pnode->lprops[iip];
}