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
struct ubifs_pnode {int iip; struct ubifs_nnode* parent; void* num; struct ubifs_lprops* lprops; } ;
struct ubifs_nnode {struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {scalar_t__ lnum; scalar_t__ offs; struct ubifs_pnode* pnode; } ;
struct ubifs_lprops {scalar_t__ free; int /*<<< orphan*/  flags; } ;
struct ubifs_info {scalar_t__ leb_size; scalar_t__ lpt_first; scalar_t__ lpt_last; scalar_t__ big_lpt; int /*<<< orphan*/  pnode_sz; void* lpt_nod_buf; } ;
struct TYPE_2__ {struct ubifs_pnode* pnode; } ;
struct lpt_scan_node {int in_tree; TYPE_1__ ptr; struct ubifs_pnode pnode; } ;

/* Variables and functions */
 struct ubifs_pnode* FUNC0 (int) ; 
 int UBIFS_LPT_FANOUT ; 
 void* FUNC1 (struct ubifs_info*,struct ubifs_nnode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_pnode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,struct ubifs_pnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,struct ubifs_lprops* const) ; 
 int FUNC6 (struct ubifs_info*,scalar_t__,void*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ubifs_info*,void*,struct ubifs_pnode*) ; 
 int FUNC8 (struct ubifs_info*,struct ubifs_pnode*,struct ubifs_nnode*,int) ; 

__attribute__((used)) static struct ubifs_pnode *FUNC9(struct ubifs_info *c,
					  struct lpt_scan_node *path,
					  struct ubifs_nnode *parent, int iip)
{
	struct ubifs_nbranch *branch;
	struct ubifs_pnode *pnode;
	void *buf = c->lpt_nod_buf;
	int err;

	branch = &parent->nbranch[iip];
	pnode = branch->pnode;
	if (pnode) {
		path->in_tree = 1;
		path->ptr.pnode = pnode;
		return pnode;
	}
	pnode = &path->pnode;
	path->in_tree = 0;
	path->ptr.pnode = pnode;
	FUNC2(pnode, 0, sizeof(struct ubifs_pnode));
	if (branch->lnum == 0) {
		/*
		 * This pnode was not written which just means that the LEB
		 * properties in it describe empty LEBs. We make the pnode as
		 * though we had read it.
		 */
		int i;

		if (c->big_lpt)
			pnode->num = FUNC1(c, parent, iip);
		for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
			struct ubifs_lprops * const lprops = &pnode->lprops[i];

			lprops->free = c->leb_size;
			lprops->flags = FUNC5(c, lprops);
		}
	} else {
		FUNC4(c, branch->lnum >= c->lpt_first &&
			     branch->lnum <= c->lpt_last);
		FUNC4(c, branch->offs >= 0 && branch->offs < c->leb_size);
		err = FUNC6(c, branch->lnum, buf, branch->offs,
				     c->pnode_sz, 1);
		if (err)
			return FUNC0(err);
		err = FUNC7(c, buf, pnode);
		if (err)
			return FUNC0(err);
	}
	err = FUNC8(c, pnode, parent, iip);
	if (err)
		return FUNC0(err);
	if (!c->big_lpt)
		pnode->num = FUNC1(c, parent, iip);
	pnode->parent = parent;
	pnode->iip = iip;
	FUNC3(c, pnode);
	return pnode;
}