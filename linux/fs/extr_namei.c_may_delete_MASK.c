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
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {int d_flags; TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_TYPE_CHILD_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int EOVERFLOW ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*,struct inode*) ; 
 struct inode* FUNC9 (struct dentry*) ; 
 scalar_t__ FUNC10 (struct dentry*) ; 
 scalar_t__ FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *victim, bool isdir)
{
	struct inode *inode = FUNC9(victim);
	int error;

	if (FUNC11(victim))
		return -ENOENT;
	FUNC0(!inode);

	FUNC0(victim->d_parent->d_inode != dir);

	/* Inode writeback is not safe when the uid or gid are invalid. */
	if (!FUNC14(inode->i_uid) || !FUNC12(inode->i_gid))
		return -EOVERFLOW;

	FUNC7(dir, victim, AUDIT_TYPE_CHILD_DELETE);

	error = FUNC13(dir, MAY_WRITE | MAY_EXEC);
	if (error)
		return error;
	if (FUNC2(dir))
		return -EPERM;

	if (FUNC8(dir, inode) || FUNC2(inode) ||
	    FUNC4(inode) || FUNC6(inode) || FUNC1(inode))
		return -EPERM;
	if (isdir) {
		if (!FUNC10(victim))
			return -ENOTDIR;
		if (FUNC5(victim))
			return -EBUSY;
	} else if (FUNC10(victim))
		return -EISDIR;
	if (FUNC3(dir))
		return -ENOENT;
	if (victim->d_flags & DCACHE_NFSFS_RENAMED)
		return -EBUSY;
	return 0;
}