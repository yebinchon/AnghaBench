#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ino; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__* d_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_type; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  MEM_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NULL_FILE_NAME ; 
 int FUNC2 (struct dentry*) ; 
 int S_IFCHR ; 
 int S_IRUGO ; 
 int S_IWUGO ; 
 TYPE_3__ aa_null ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC12 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vfsmount*) ; 
 struct inode* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct vfsmount**,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct vfsmount**,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct dentry *parent)
{
	struct vfsmount *mount = NULL;
	struct dentry *dentry;
	struct inode *inode;
	int count = 0;
	int error = FUNC15(parent->d_sb->s_type, &mount, &count);

	if (error)
		return error;

	FUNC10(FUNC4(parent));
	dentry = FUNC12(NULL_FILE_NAME, parent, FUNC17(NULL_FILE_NAME));
	if (FUNC0(dentry)) {
		error = FUNC2(dentry);
		goto out;
	}
	inode = FUNC14(parent->d_inode->i_sb);
	if (!inode) {
		error = -ENOMEM;
		goto out1;
	}

	inode->i_ino = FUNC8();
	inode->i_mode = S_IFCHR | S_IRUGO | S_IWUGO;
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC3(inode);
	FUNC9(inode, S_IFCHR | S_IRUGO | S_IWUGO,
			   FUNC1(MEM_MAJOR, 3));
	FUNC5(dentry, inode);
	aa_null.dentry = FUNC6(dentry);
	aa_null.mnt = FUNC13(mount);

	error = 0;

out1:
	FUNC7(dentry);
out:
	FUNC11(FUNC4(parent));
	FUNC16(&mount, &count);
	return error;
}