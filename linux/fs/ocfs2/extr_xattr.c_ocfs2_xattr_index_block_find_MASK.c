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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_xattr_tree_root {struct ocfs2_extent_list xt_list; } ;
struct ocfs2_xattr_search {int dummy; } ;
struct TYPE_3__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODATA ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int,char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct ocfs2_xattr_search*) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,struct ocfs2_extent_list*) ; 
 scalar_t__ FUNC6 (struct inode*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int,scalar_t__,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int,scalar_t__,unsigned long long,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
					struct buffer_head *root_bh,
					int name_index,
					const char *name,
					struct ocfs2_xattr_search *xs)
{
	int ret;
	struct ocfs2_xattr_block *xb =
			(struct ocfs2_xattr_block *)root_bh->b_data;
	struct ocfs2_xattr_tree_root *xb_root = &xb->xb_attrs.xb_root;
	struct ocfs2_extent_list *el = &xb_root->xt_list;
	u64 p_blkno = 0;
	u32 first_hash, num_clusters = 0;
	u32 name_hash = FUNC6(inode, name, FUNC7(name));

	if (FUNC2(el->l_next_free_rec) == 0)
		return -ENODATA;

	FUNC8(FUNC1(inode)->ip_blkno,
					name, name_index, name_hash,
					(unsigned long long)root_bh->b_blocknr,
					-1);

	ret = FUNC5(inode, name_hash, &p_blkno, &first_hash,
				  &num_clusters, el);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	FUNC0(p_blkno == 0 || num_clusters == 0 || first_hash > name_hash);

	FUNC9(FUNC1(inode)->ip_blkno,
					name, name_index, first_hash,
					(unsigned long long)p_blkno,
					num_clusters);

	ret = FUNC4(inode, name_index, name, name_hash,
				      p_blkno, first_hash, num_clusters, xs);

out:
	return ret;
}