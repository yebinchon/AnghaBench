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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_reflink_xattr_tree_args {int /*<<< orphan*/  new_blk_bh; TYPE_1__* reflink; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  new_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ocfs2_reflink_xattr_tree_args*,struct ocfs2_extent_tree*,scalar_t__,int /*<<< orphan*/ ,int*,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_reflink_xattr_tree_args*,struct ocfs2_extent_tree*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
				   struct buffer_head *root_bh,
				   u64 blkno,
				   u32 cpos,
				   u32 len,
				   void *para)
{
	int ret, credits = 0;
	handle_t *handle;
	struct ocfs2_reflink_xattr_tree_args *args =
			(struct ocfs2_reflink_xattr_tree_args *)para;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_extent_tree et;

	FUNC11((unsigned long long)blkno, len);

	FUNC7(&et,
					  FUNC0(args->reflink->new_inode),
					  args->new_blk_bh);

	ret = FUNC8(args, &et, blkno,
						      len, &credits,
						      &meta_ac, &data_ac);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	handle = FUNC10(osb, credits);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC4(ret);
		goto out;
	}

	ret = FUNC9(handle, inode, args, &et,
					  meta_ac, data_ac,
					  blkno, cpos, len);
	if (ret)
		FUNC4(ret);

	FUNC5(osb, handle);

out:
	if (meta_ac)
		FUNC6(meta_ac);
	if (data_ac)
		FUNC6(data_ac);
	return ret;
}