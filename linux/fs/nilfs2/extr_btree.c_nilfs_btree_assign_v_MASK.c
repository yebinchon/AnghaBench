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
union nilfs_bmap_ptr_req {int /*<<< orphan*/  bpr_req; int /*<<< orphan*/  bpr_ptr; } ;
struct TYPE_2__ {void* bi_blkoff; void* bi_vblocknr; } ;
union nilfs_binfo {TYPE_1__ bi_v; } ;
struct nilfs_btree_path {int /*<<< orphan*/  bp_index; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct nilfs_bmap*) ; 
 struct nilfs_btree_node* FUNC2 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nilfs_bmap *btree,
				struct nilfs_btree_path *path,
				int level,
				struct buffer_head **bh,
				sector_t blocknr,
				union nilfs_binfo *binfo)
{
	struct nilfs_btree_node *parent;
	struct inode *dat = FUNC1(btree);
	__u64 key;
	__u64 ptr;
	union nilfs_bmap_ptr_req req;
	int ncmax, ret;

	parent = FUNC2(btree, path, level + 1, &ncmax);
	ptr = FUNC4(parent, path[level + 1].bp_index,
				       ncmax);
	req.bpr_ptr = ptr;
	ret = FUNC6(dat, &req.bpr_req);
	if (ret < 0)
		return ret;
	FUNC5(dat, &req.bpr_req, blocknr);

	key = FUNC3(parent, path[level + 1].bp_index);
	/* on-disk format */
	binfo->bi_v.bi_vblocknr = FUNC0(ptr);
	binfo->bi_v.bi_blkoff = FUNC0(key);

	return 0;
}