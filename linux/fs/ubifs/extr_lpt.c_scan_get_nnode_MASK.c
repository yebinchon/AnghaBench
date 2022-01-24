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
struct ubifs_nnode {int iip; struct ubifs_nnode* parent; scalar_t__ level; void* num; struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {scalar_t__ lnum; int /*<<< orphan*/  offs; struct ubifs_nnode* nnode; } ;
struct ubifs_info {scalar_t__ big_lpt; int /*<<< orphan*/  nnode_sz; void* lpt_nod_buf; } ;
struct TYPE_2__ {struct ubifs_nnode* nnode; } ;
struct lpt_scan_node {int in_tree; TYPE_1__ ptr; struct ubifs_nnode nnode; } ;

/* Variables and functions */
 struct ubifs_nnode* FUNC0 (int) ; 
 void* FUNC1 (struct ubifs_info*,struct ubifs_nnode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_nnode*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ubifs_info*,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ubifs_info*,void*,struct ubifs_nnode*) ; 
 int FUNC5 (struct ubifs_info*,struct ubifs_nnode*,struct ubifs_nnode*,int) ; 

__attribute__((used)) static struct ubifs_nnode *FUNC6(struct ubifs_info *c,
					  struct lpt_scan_node *path,
					  struct ubifs_nnode *parent, int iip)
{
	struct ubifs_nbranch *branch;
	struct ubifs_nnode *nnode;
	void *buf = c->lpt_nod_buf;
	int err;

	branch = &parent->nbranch[iip];
	nnode = branch->nnode;
	if (nnode) {
		path->in_tree = 1;
		path->ptr.nnode = nnode;
		return nnode;
	}
	nnode = &path->nnode;
	path->in_tree = 0;
	path->ptr.nnode = nnode;
	FUNC2(nnode, 0, sizeof(struct ubifs_nnode));
	if (branch->lnum == 0) {
		/*
		 * This nnode was not written which just means that the LEB
		 * properties in the subtree below it describe empty LEBs. We
		 * make the nnode as though we had read it, which in fact means
		 * doing almost nothing.
		 */
		if (c->big_lpt)
			nnode->num = FUNC1(c, parent, iip);
	} else {
		err = FUNC3(c, branch->lnum, buf, branch->offs,
				     c->nnode_sz, 1);
		if (err)
			return FUNC0(err);
		err = FUNC4(c, buf, nnode);
		if (err)
			return FUNC0(err);
	}
	err = FUNC5(c, nnode, parent, iip);
	if (err)
		return FUNC0(err);
	if (!c->big_lpt)
		nnode->num = FUNC1(c, parent, iip);
	nnode->level = parent->level - 1;
	nnode->parent = parent;
	nnode->iip = iip;
	return nnode;
}