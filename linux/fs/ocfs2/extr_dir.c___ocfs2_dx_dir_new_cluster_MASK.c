#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *dir,
				      u32 cpos, handle_t *handle,
				      struct ocfs2_alloc_context *data_ac,
				      struct buffer_head **dx_leaves,
				      int num_dx_leaves, u64 *ret_phys_blkno)
{
	int ret;
	u32 phys, num;
	u64 phys_blkno;
	struct ocfs2_super *osb = FUNC0(dir->i_sb);

	/*
	 * XXX: For create, this should claim cluster for the index
	 * *before* the unindexed insert so that we have a better
	 * chance of contiguousness as the directory grows in number
	 * of entries.
	 */
	ret = FUNC1(handle, data_ac, 1, 1, &phys, &num);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	/*
	 * Format the new cluster first. That way, we're inserting
	 * valid data.
	 */
	phys_blkno = FUNC3(osb->sb, phys);
	ret = FUNC4(osb, handle, dir, dx_leaves,
					  num_dx_leaves, phys_blkno);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	*ret_phys_blkno = phys_blkno;
out:
	return ret;
}