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
struct TYPE_2__ {scalar_t__ bpr_ptr; } ;
struct nilfs_btree_path {int /*<<< orphan*/  (* bp_op ) (struct nilfs_bmap*,struct nilfs_btree_path*,int,scalar_t__*,scalar_t__*) ;TYPE_1__ bp_newreq; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 size_t NILFS_BTREE_LEVEL_DATA ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*) ; 
 struct inode* FUNC3 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_bmap*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_bmap*,struct nilfs_btree_path*,int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC8(struct nilfs_bmap *btree,
				      struct nilfs_btree_path *path,
				      int maxlevel, __u64 key, __u64 ptr)
{
	struct inode *dat = NULL;
	int level;

	FUNC6((struct buffer_head *)((unsigned long)ptr));
	ptr = path[NILFS_BTREE_LEVEL_DATA].bp_newreq.bpr_ptr;
	if (FUNC0(btree)) {
		FUNC5(btree, key, ptr);
		dat = FUNC3(btree);
	}

	for (level = NILFS_BTREE_LEVEL_NODE_MIN; level <= maxlevel; level++) {
		FUNC1(btree,
					    &path[level - 1].bp_newreq, dat);
		path[level].bp_op(btree, path, level, &key, &ptr);
	}

	if (!FUNC2(btree))
		FUNC4(btree);
}