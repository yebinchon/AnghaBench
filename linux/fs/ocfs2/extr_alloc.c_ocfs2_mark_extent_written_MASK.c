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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  OCFS2_EXT_UNWRITTEN ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode,
			      struct ocfs2_extent_tree *et,
			      handle_t *handle, u32 cpos, u32 len, u32 phys,
			      struct ocfs2_alloc_context *meta_ac,
			      struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret;

	FUNC7(
		(unsigned long long)FUNC0(inode)->ip_blkno,
		cpos, len, phys);

	if (!FUNC6(FUNC1(inode->i_sb))) {
		FUNC4(inode->i_sb, "Inode %llu has unwritten extents that are being written to, but the feature bit is not set in the super block\n",
			    (unsigned long long)FUNC0(inode)->ip_blkno);
		ret = -EROFS;
		goto out;
	}

	/*
	 * XXX: This should be fixed up so that we just re-insert the
	 * next extent records.
	 */
	FUNC5(et, 0);

	ret = FUNC3(handle, et, cpos,
				       len, phys, meta_ac, dealloc,
				       0, OCFS2_EXT_UNWRITTEN);
	if (ret)
		FUNC2(ret);

out:
	return ret;
}