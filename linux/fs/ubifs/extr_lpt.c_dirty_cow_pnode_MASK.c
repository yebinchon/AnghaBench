#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ubifs_pnode {size_t iip; TYPE_2__* parent; int /*<<< orphan*/  flags; int /*<<< orphan*/ * cnext; } ;
struct ubifs_info {int dirty_pn_cnt; } ;
struct TYPE_4__ {TYPE_1__* nbranch; } ;
struct TYPE_3__ {struct ubifs_pnode* pnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_CNODE ; 
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ubifs_pnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  OBSOLETE_CNODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,struct ubifs_pnode*) ; 
 struct ubifs_pnode* FUNC4 (struct ubifs_pnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,struct ubifs_pnode*,struct ubifs_pnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct ubifs_pnode *FUNC10(struct ubifs_info *c,
					   struct ubifs_pnode *pnode)
{
	struct ubifs_pnode *p;

	if (!FUNC7(COW_CNODE, &pnode->flags)) {
		/* pnode is not being committed */
		if (!FUNC6(DIRTY_CNODE, &pnode->flags)) {
			c->dirty_pn_cnt += 1;
			FUNC3(c, pnode);
		}
		return pnode;
	}

	/* pnode is being committed, so copy it */
	p = FUNC4(pnode, sizeof(struct ubifs_pnode), GFP_NOFS);
	if (FUNC9(!p))
		return FUNC0(-ENOMEM);

	p->cnext = NULL;
	FUNC2(DIRTY_CNODE, &p->flags);
	FUNC1(COW_CNODE, &p->flags);
	FUNC5(c, pnode, p);

	FUNC8(c, !FUNC7(OBSOLETE_CNODE, &pnode->flags));
	FUNC2(OBSOLETE_CNODE, &pnode->flags);

	c->dirty_pn_cnt += 1;
	FUNC3(c, pnode);
	pnode->parent->nbranch[p->iip].pnode = p;
	return p;
}