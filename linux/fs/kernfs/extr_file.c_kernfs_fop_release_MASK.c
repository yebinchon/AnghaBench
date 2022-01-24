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
struct kernfs_open_file {struct kernfs_open_file* prealloc_buf; } ;
struct kernfs_node {int flags; } ;
struct inode {struct kernfs_node* i_private; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int KERNFS_HAS_RELEASE ; 
 struct kernfs_open_file* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  kernfs_open_file_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*,struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*,struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct kernfs_node *kn = inode->i_private;
	struct kernfs_open_file *of = FUNC0(filp);

	if (kn->flags & KERNFS_HAS_RELEASE) {
		FUNC4(&kernfs_open_file_mutex);
		FUNC2(kn, of);
		FUNC5(&kernfs_open_file_mutex);
	}

	FUNC1(kn, of);
	FUNC6(inode, filp);
	FUNC3(of->prealloc_buf);
	FUNC3(of);

	return 0;
}