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
struct ocfs2_super {struct inode* root_inode; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {scalar_t__ d_fsdata; TYPE_1__ d_name; int /*<<< orphan*/  d_lock; struct dentry* d_parent; int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {unsigned long ip_dir_lock_gen; int ip_flags; scalar_t__ ip_blkno; int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct dentry *dentry, unsigned int flags)
{
	struct inode *inode;
	int ret = 0;    /* if all else fails, just return false */
	struct ocfs2_super *osb;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	inode = FUNC4(dentry);
	osb = FUNC2(dentry->d_sb);

	FUNC8(dentry, dentry->d_name.len,
				      dentry->d_name.name);

	/* For a negative dentry -
	 * check the generation number of the parent and compare with the
	 * one stored in the inode.
	 */
	if (inode == NULL) {
		unsigned long gen = (unsigned long) dentry->d_fsdata;
		unsigned long pgen;
		FUNC6(&dentry->d_lock);
		pgen = FUNC1(FUNC4(dentry->d_parent))->ip_dir_lock_gen;
		FUNC7(&dentry->d_lock);
		FUNC10(dentry->d_name.len,
						       dentry->d_name.name,
						       pgen, gen);
		if (gen != pgen)
			goto bail;
		goto valid;
	}

	FUNC0(!osb);

	if (inode == osb->root_inode || FUNC5(inode))
		goto bail;

	FUNC6(&FUNC1(inode)->ip_lock);
	/* did we or someone else delete this inode? */
	if (FUNC1(inode)->ip_flags & OCFS2_INODE_DELETED) {
		FUNC7(&FUNC1(inode)->ip_lock);
		FUNC9(
				(unsigned long long)FUNC1(inode)->ip_blkno);
		goto bail;
	}
	FUNC7(&FUNC1(inode)->ip_lock);

	/*
	 * We don't need a cluster lock to test this because once an
	 * inode nlink hits zero, it never goes back.
	 */
	if (inode->i_nlink == 0) {
		FUNC12(
			(unsigned long long)FUNC1(inode)->ip_blkno,
			FUNC3(inode->i_mode));
		goto bail;
	}

	/*
	 * If the last lookup failed to create dentry lock, let us
	 * redo it.
	 */
	if (!dentry->d_fsdata) {
		FUNC11(
				(unsigned long long)FUNC1(inode)->ip_blkno);
		goto bail;
	}

valid:
	ret = 1;

bail:
	FUNC13(ret);
	return ret;
}