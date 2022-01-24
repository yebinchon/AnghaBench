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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct dentry {int /*<<< orphan*/  d_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct inode *dir, struct dentry *dentry)
{
	int error;
	int need_rehash = 0;

	FUNC5(VFS, "NFS: unlink(%s/%lu, %pd)\n", dir->i_sb->s_id,
		dir->i_ino, dentry);

	FUNC12(dir, dentry);
	FUNC10(&dentry->d_lock);
	if (FUNC1(dentry) > 1) {
		FUNC11(&dentry->d_lock);
		/* Start asynchronous writeout of the inode */
		FUNC14(FUNC2(dentry), 0);
		error = FUNC9(dir, dentry);
		goto out;
	}
	if (!FUNC4(dentry)) {
		FUNC0(dentry);
		need_rehash = 1;
	}
	FUNC11(&dentry->d_lock);
	error = FUNC6(dentry);
	if (!error || error == -ENOENT) {
		FUNC8(dentry, FUNC7(dir));
	} else if (need_rehash)
		FUNC3(dentry);
out:
	FUNC13(dir, dentry, error);
	return error;
}