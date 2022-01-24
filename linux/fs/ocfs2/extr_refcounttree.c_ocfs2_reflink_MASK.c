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
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_xattr_sem; int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*,struct buffer_head*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,struct inode**) ; 
 int FUNC9 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode*,struct buffer_head**,int) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *,int,struct ocfs2_lock_holder*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int,struct ocfs2_lock_holder*,int) ; 
 int FUNC14 (struct inode*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct dentry *old_dentry, struct inode *dir,
			 struct dentry *new_dentry, bool preserve)
{
	int error, had_lock;
	struct inode *inode = FUNC4(old_dentry);
	struct buffer_head *old_bh = NULL;
	struct inode *new_orphan_inode = NULL;
	struct ocfs2_lock_holder oh;

	if (!FUNC16(FUNC1(inode->i_sb)))
		return -EOPNOTSUPP;


	error = FUNC8(dir, inode->i_mode,
					     &new_orphan_inode);
	if (error) {
		FUNC7(error);
		goto out;
	}

	error = FUNC17(inode, 1);
	if (error) {
		FUNC7(error);
		goto out;
	}

	error = FUNC10(inode, &old_bh, 1);
	if (error) {
		FUNC7(error);
		FUNC18(inode, 1);
		goto out;
	}

	FUNC5(&FUNC0(inode)->ip_xattr_sem);
	FUNC5(&FUNC0(inode)->ip_alloc_sem);
	error = FUNC2(old_dentry, old_bh,
				new_orphan_inode, preserve);
	FUNC19(&FUNC0(inode)->ip_alloc_sem);
	FUNC19(&FUNC0(inode)->ip_xattr_sem);

	FUNC12(inode, 1);
	FUNC18(inode, 1);
	FUNC3(old_bh);

	if (error) {
		FUNC7(error);
		goto out;
	}

	had_lock = FUNC11(new_orphan_inode, NULL, 1,
					    &oh);
	if (had_lock < 0) {
		error = had_lock;
		FUNC7(error);
		goto out;
	}

	/* If the security isn't preserved, we need to re-initialize them. */
	if (!preserve) {
		error = FUNC9(dir, new_orphan_inode,
						    &new_dentry->d_name);
		if (error)
			FUNC7(error);
	}
	if (!error) {
		error = FUNC14(dir, new_orphan_inode,
						       new_dentry);
		if (error)
			FUNC7(error);
	}
	FUNC13(new_orphan_inode, 1, &oh, had_lock);

out:
	if (new_orphan_inode) {
		/*
		 * We need to open_unlock the inode no matter whether we
		 * succeed or not, so that other nodes can delete it later.
		 */
		FUNC15(new_orphan_inode);
		if (error)
			FUNC6(new_orphan_inode);
	}

	return error;
}