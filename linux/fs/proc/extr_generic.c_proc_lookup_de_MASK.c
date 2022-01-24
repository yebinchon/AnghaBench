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
struct proc_dir_entry {int /*<<< orphan*/  proc_dops; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_dir_entry*) ; 
 struct proc_dir_entry* FUNC4 (struct proc_dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC8(struct inode *dir, struct dentry *dentry,
			      struct proc_dir_entry *de)
{
	struct inode *inode;

	FUNC6(&proc_subdir_lock);
	de = FUNC4(de, dentry->d_name.name, dentry->d_name.len);
	if (de) {
		FUNC3(de);
		FUNC7(&proc_subdir_lock);
		inode = FUNC5(dir->i_sb, de);
		if (!inode)
			return FUNC0(-ENOMEM);
		FUNC1(dentry, de->proc_dops);
		return FUNC2(inode, dentry);
	}
	FUNC7(&proc_subdir_lock);
	return FUNC0(-ENOENT);
}