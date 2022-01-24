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
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const struct path *path, struct kstat *stat,
		       u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC0(path->dentry);
	struct kernfs_node *kn = inode->i_private;

	FUNC3(&kernfs_mutex);
	FUNC2(kn, inode);
	FUNC4(&kernfs_mutex);

	FUNC1(inode, stat);
	return 0;
}