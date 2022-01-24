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
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_inode_info {unsigned long long ip_dir_lock_gen; scalar_t__ ip_blkno; } ;
struct inode {int /*<<< orphan*/  i_mode; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int UNBLOCK_CONTINUE ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 scalar_t__ FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 struct inode* FUNC7 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ocfs2_lock_res *lockres,
				     int blocking)
{
	struct inode *inode;
	struct address_space *mapping;
	struct ocfs2_inode_info *oi;

       	inode = FUNC7(lockres);
	mapping = inode->i_mapping;

	if (FUNC1(inode->i_mode)) {
		oi = FUNC0(inode);
		oi->ip_dir_lock_gen++;
		FUNC6(0, "generation: %u\n", oi->ip_dir_lock_gen);
		goto out;
	}

	if (!FUNC2(inode->i_mode))
		goto out;

	/*
	 * We need this before the filemap_fdatawrite() so that it can
	 * transfer the dirty bit from the PTE to the
	 * page. Unfortunately this means that even for EX->PR
	 * downconverts, we'll lose our mappings and have to build
	 * them up again.
	 */
	FUNC10(mapping, 0, 0, 0);

	if (FUNC4(mapping)) {
		FUNC6(ML_ERROR, "Could not sync inode %llu for downconvert!",
		     (unsigned long long)FUNC0(inode)->ip_blkno);
	}
	FUNC8(mapping);
	if (blocking == DLM_LOCK_EX) {
		FUNC9(mapping, 0);
	} else {
		/* We only need to wait on the I/O if we're not also
		 * truncating pages because truncate_inode_pages waits
		 * for us above. We don't truncate pages if we're
		 * blocking anything < EXMODE because we want to keep
		 * them around in that case. */
		FUNC3(mapping);
	}

	FUNC5(inode);

out:
	return UNBLOCK_CONTINUE;
}