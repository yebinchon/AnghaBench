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
struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;

/* Variables and functions */
 int ECHILD ; 
 int MAY_NOT_BLOCK ; 
 int FUNC0 (struct inode*,int) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode, int mask)
{
	struct kernfs_node *kn;

	if (mask & MAY_NOT_BLOCK)
		return -ECHILD;

	kn = inode->i_private;

	FUNC2(&kernfs_mutex);
	FUNC1(kn, inode);
	FUNC3(&kernfs_mutex);

	return FUNC0(inode, mask);
}