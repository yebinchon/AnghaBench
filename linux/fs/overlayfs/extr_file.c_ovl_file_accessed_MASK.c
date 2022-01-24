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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct file {int f_flags; int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int O_NOATIME ; 
 struct inode* FUNC0 (struct file*) ; 
 struct inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct file *file)
{
	struct inode *inode, *upperinode;

	if (file->f_flags & O_NOATIME)
		return;

	inode = FUNC0(file);
	upperinode = FUNC1(inode);

	if (!upperinode)
		return;

	if ((!FUNC2(&inode->i_mtime, &upperinode->i_mtime) ||
	     !FUNC2(&inode->i_ctime, &upperinode->i_ctime))) {
		inode->i_mtime = upperinode->i_mtime;
		inode->i_ctime = upperinode->i_ctime;
	}

	FUNC3(&file->f_path);
}