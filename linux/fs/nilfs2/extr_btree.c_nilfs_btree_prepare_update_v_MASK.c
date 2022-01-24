#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bpr_req; scalar_t__ bpr_ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  bpr_req; int /*<<< orphan*/  bpr_ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/  bh; scalar_t__ newkey; int /*<<< orphan*/  oldkey; } ;
struct nilfs_btree_path {TYPE_2__ bp_newreq; TYPE_1__ bp_oldreq; TYPE_3__ bp_ctxt; int /*<<< orphan*/  bp_bh; int /*<<< orphan*/  bp_index; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_btnode_cache; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct nilfs_bmap*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 struct nilfs_btree_node* FUNC3 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nilfs_bmap *btree,
					struct nilfs_btree_path *path,
					int level, struct inode *dat)
{
	struct nilfs_btree_node *parent;
	int ncmax, ret;

	parent = FUNC3(btree, path, level + 1, &ncmax);
	path[level].bp_oldreq.bpr_ptr =
		FUNC4(parent, path[level + 1].bp_index,
					 ncmax);
	path[level].bp_newreq.bpr_ptr = path[level].bp_oldreq.bpr_ptr + 1;
	ret = FUNC6(dat, &path[level].bp_oldreq.bpr_req,
				       &path[level].bp_newreq.bpr_req);
	if (ret < 0)
		return ret;

	if (FUNC1(path[level].bp_bh)) {
		path[level].bp_ctxt.oldkey = path[level].bp_oldreq.bpr_ptr;
		path[level].bp_ctxt.newkey = path[level].bp_newreq.bpr_ptr;
		path[level].bp_ctxt.bh = path[level].bp_bh;
		ret = FUNC2(
			&FUNC0(btree)->i_btnode_cache,
			&path[level].bp_ctxt);
		if (ret < 0) {
			FUNC5(dat,
					       &path[level].bp_oldreq.bpr_req,
					       &path[level].bp_newreq.bpr_req);
			return ret;
		}
	}

	return 0;
}