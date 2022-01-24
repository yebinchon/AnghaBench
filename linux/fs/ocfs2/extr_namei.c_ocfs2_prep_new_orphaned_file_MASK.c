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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,char*,struct ocfs2_dir_lookup_result*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int FUNC9 (struct ocfs2_super*,struct inode**,struct buffer_head**) ; 
 int FUNC10 (struct ocfs2_super*,struct ocfs2_alloc_context**) ; 

__attribute__((used)) static int FUNC11(struct inode *dir,
					struct buffer_head *dir_bh,
					char *orphan_name,
					struct inode **ret_orphan_dir,
					u64 *ret_di_blkno,
					struct ocfs2_dir_lookup_result *orphan_insert,
					struct ocfs2_alloc_context **ret_inode_ac)
{
	int ret;
	u64 di_blkno;
	struct ocfs2_super *osb = FUNC0(dir->i_sb);
	struct inode *orphan_dir = NULL;
	struct buffer_head *orphan_dir_bh = NULL;
	struct ocfs2_alloc_context *inode_ac = NULL;

	ret = FUNC9(osb, &orphan_dir, &orphan_dir_bh);
	if (ret < 0) {
		FUNC5(ret);
		return ret;
	}

	/* reserve an inode spot */
	ret = FUNC10(osb, &inode_ac);
	if (ret < 0) {
		if (ret != -ENOSPC)
			FUNC5(ret);
		goto out;
	}

	ret = FUNC6(dir, dir_bh, inode_ac,
				       &di_blkno);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC1(orphan_dir, orphan_dir_bh,
					 di_blkno, orphan_name, orphan_insert,
					 false);
	if (ret < 0) {
		FUNC5(ret);
		goto out;
	}

out:
	if (ret == 0) {
		*ret_orphan_dir = orphan_dir;
		*ret_di_blkno = di_blkno;
		*ret_inode_ac = inode_ac;
		/*
		 * orphan_name and orphan_insert are already up to
		 * date via prepare_orphan_dir
		 */
	} else {
		/* Unroll reserve_new_inode* */
		if (inode_ac)
			FUNC7(inode_ac);

		/* Unroll orphan dir locking */
		FUNC3(orphan_dir);
		FUNC8(orphan_dir, 1);
		FUNC4(orphan_dir);
	}

	FUNC2(orphan_dir_bh);

	return ret;
}