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
struct file_operations {scalar_t__ owner; } ;
struct file {void* private_data; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int O_ACCMODE ; 
 int O_NONBLOCK ; 
 struct file* FUNC2 (struct file*,int /*<<< orphan*/ ,char const*,int,struct file_operations const*) ; 
 struct file* anon_inode_inode ; 
 int /*<<< orphan*/  anon_inode_mnt ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

struct file *FUNC7(const char *name,
				const struct file_operations *fops,
				void *priv, int flags)
{
	struct file *file;

	if (FUNC1(anon_inode_inode))
		return FUNC0(-ENODEV);

	if (fops->owner && !FUNC6(fops->owner))
		return FUNC0(-ENOENT);

	/*
	 * We know the anon_inode inode count is always greater than zero,
	 * so ihold() is safe.
	 */
	FUNC3(anon_inode_inode);
	file = FUNC2(anon_inode_inode, anon_inode_mnt, name,
				 flags & (O_ACCMODE | O_NONBLOCK), fops);
	if (FUNC1(file))
		goto err;

	file->f_mapping = anon_inode_inode->i_mapping;

	file->private_data = priv;

	return file;

err:
	FUNC4(anon_inode_inode);
	FUNC5(fops->owner);
	return file;
}