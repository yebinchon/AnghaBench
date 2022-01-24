#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubifs_nnode {size_t iip; TYPE_3__* parent; int /*<<< orphan*/  flags; struct ubifs_nbranch* nbranch; int /*<<< orphan*/ * cnext; } ;
struct ubifs_nbranch {TYPE_1__* cnode; } ;
struct ubifs_info {int dirty_nn_cnt; struct ubifs_nnode* nroot; } ;
struct TYPE_6__ {TYPE_2__* nbranch; } ;
struct TYPE_5__ {struct ubifs_nnode* nnode; } ;
struct TYPE_4__ {struct ubifs_nnode* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_CNODE ; 
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ubifs_nnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  OBSOLETE_CNODE ; 
 int UBIFS_LPT_FANOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ubifs_nnode* FUNC3 (struct ubifs_nnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,struct ubifs_nnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct ubifs_nnode *FUNC9(struct ubifs_info *c,
					   struct ubifs_nnode *nnode)
{
	struct ubifs_nnode *n;
	int i;

	if (!FUNC5(COW_CNODE, &nnode->flags)) {
		/* nnode is not being committed */
		if (!FUNC4(DIRTY_CNODE, &nnode->flags)) {
			c->dirty_nn_cnt += 1;
			FUNC6(c, nnode);
		}
		return nnode;
	}

	/* nnode is being committed, so copy it */
	n = FUNC3(nnode, sizeof(struct ubifs_nnode), GFP_NOFS);
	if (FUNC8(!n))
		return FUNC0(-ENOMEM);

	n->cnext = NULL;
	FUNC2(DIRTY_CNODE, &n->flags);
	FUNC1(COW_CNODE, &n->flags);

	/* The children now have new parent */
	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
		struct ubifs_nbranch *branch = &n->nbranch[i];

		if (branch->cnode)
			branch->cnode->parent = n;
	}

	FUNC7(c, !FUNC5(OBSOLETE_CNODE, &nnode->flags));
	FUNC2(OBSOLETE_CNODE, &nnode->flags);

	c->dirty_nn_cnt += 1;
	FUNC6(c, nnode);
	if (nnode->parent)
		nnode->parent->nbranch[n->iip].nnode = n;
	else
		c->nroot = n;
	return n;
}