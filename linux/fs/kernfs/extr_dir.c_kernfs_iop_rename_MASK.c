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
struct kernfs_syscall_ops {int (* rename ) (struct kernfs_node*,struct kernfs_node*,int /*<<< orphan*/ ) ;} ;
struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {struct kernfs_syscall_ops* syscall_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 struct kernfs_node* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 TYPE_2__* FUNC3 (struct kernfs_node*) ; 
 int FUNC4 (struct kernfs_node*,struct kernfs_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *old_dir, struct dentry *old_dentry,
			     struct inode *new_dir, struct dentry *new_dentry,
			     unsigned int flags)
{
	struct kernfs_node *kn = FUNC0(old_dentry);
	struct kernfs_node *new_parent = new_dir->i_private;
	struct kernfs_syscall_ops *scops = FUNC3(kn)->syscall_ops;
	int ret;

	if (flags)
		return -EINVAL;

	if (!scops || !scops->rename)
		return -EPERM;

	if (!FUNC1(kn))
		return -ENODEV;

	if (!FUNC1(new_parent)) {
		FUNC2(kn);
		return -ENODEV;
	}

	ret = scops->rename(kn, new_parent, new_dentry->d_name.name);

	FUNC2(new_parent);
	FUNC2(kn);
	return ret;
}