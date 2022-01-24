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
struct kernfs_syscall_ops {int (* rmdir ) (struct kernfs_node*) ;} ;
struct kernfs_node {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct kernfs_syscall_ops* syscall_ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 struct kernfs_node* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 TYPE_1__* FUNC3 (struct kernfs_node*) ; 
 int FUNC4 (struct kernfs_node*) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, struct dentry *dentry)
{
	struct kernfs_node *kn  = FUNC0(dentry);
	struct kernfs_syscall_ops *scops = FUNC3(kn)->syscall_ops;
	int ret;

	if (!scops || !scops->rmdir)
		return -EPERM;

	if (!FUNC1(kn))
		return -ENODEV;

	ret = scops->rmdir(kn);

	FUNC2(kn);
	return ret;
}