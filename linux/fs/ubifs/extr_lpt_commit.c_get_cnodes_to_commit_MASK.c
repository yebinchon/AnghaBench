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
struct ubifs_info {int dirty_nn_cnt; int dirty_pn_cnt; struct ubifs_cnode* lpt_cnext; TYPE_1__* nroot; } ;
struct ubifs_cnode {struct ubifs_cnode* cnext; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_CNODE ; 
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct ubifs_cnode* FUNC3 (struct ubifs_info*,TYPE_1__*) ; 
 struct ubifs_cnode* FUNC4 (struct ubifs_info*,struct ubifs_cnode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c)
{
	struct ubifs_cnode *cnode, *cnext;
	int cnt = 0;

	if (!c->nroot)
		return 0;

	if (!FUNC5(DIRTY_CNODE, &c->nroot->flags))
		return 0;

	c->lpt_cnext = FUNC3(c, c->nroot);
	cnode = c->lpt_cnext;
	if (!cnode)
		return 0;
	cnt += 1;
	while (1) {
		FUNC6(c, !FUNC5(COW_CNODE, &cnode->flags));
		FUNC0(COW_CNODE, &cnode->flags);
		cnext = FUNC4(c, cnode);
		if (!cnext) {
			cnode->cnext = c->lpt_cnext;
			break;
		}
		cnode->cnext = cnext;
		cnode = cnext;
		cnt += 1;
	}
	FUNC1("committing %d cnodes", cnt);
	FUNC2("committing %d cnodes", cnt);
	FUNC6(c, cnt == c->dirty_nn_cnt + c->dirty_pn_cnt);
	return cnt;
}