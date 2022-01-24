#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct inode_operations {int dummy; } ;
struct inode {int i_mode; struct file_operations const* i_fop; void* i_link; struct inode_operations const* i_op; void* i_private; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IALLUGO ; 
 int S_IFMT ; 
 int S_IFREG ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  fs_type ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct dentry* FUNC14 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 TYPE_1__* mount ; 
 int /*<<< orphan*/  mount_count ; 
 struct inode* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 struct inode_operations const simple_dir_inode_operations ; 
 struct file_operations const simple_dir_operations ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 struct inode_operations const simple_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC20(const char *name, umode_t mode,
					struct dentry *parent, void *data,
					const struct file_operations *fops,
					const struct inode_operations *iops)
{
	struct dentry *dentry;
	struct inode *dir, *inode;
	int error;

	if (!(mode & S_IFMT))
		mode = (mode & S_IALLUGO) | S_IFREG;

	FUNC16("securityfs: creating file '%s'\n",name);

	error = FUNC17(&fs_type, &mount, &mount_count);
	if (error)
		return FUNC0(error);

	if (!parent)
		parent = mount->mnt_root;

	dir = FUNC5(parent);

	FUNC12(dir);
	dentry = FUNC14(name, parent, FUNC19(name));
	if (FUNC1(dentry))
		goto out;

	if (FUNC7(dentry)) {
		error = -EEXIST;
		goto out1;
	}

	inode = FUNC15(dir->i_sb);
	if (!inode) {
		error = -ENOMEM;
		goto out1;
	}

	inode->i_ino = FUNC10();
	inode->i_mode = mode;
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC4(inode);
	inode->i_private = data;
	if (FUNC2(mode)) {
		inode->i_op = &simple_dir_inode_operations;
		inode->i_fop = &simple_dir_operations;
		FUNC11(inode);
		FUNC11(dir);
	} else if (FUNC3(mode)) {
		inode->i_op = iops ? iops : &simple_symlink_inode_operations;
		inode->i_link = data;
	} else {
		inode->i_fop = fops;
	}
	FUNC6(dentry, inode);
	FUNC8(dentry);
	FUNC13(dir);
	return dentry;

out1:
	FUNC9(dentry);
	dentry = FUNC0(error);
out:
	FUNC13(dir);
	FUNC18(&mount, &mount_count);
	return dentry;
}