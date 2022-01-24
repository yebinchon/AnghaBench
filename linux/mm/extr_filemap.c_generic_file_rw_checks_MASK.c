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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int f_mode; int f_flags; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EISDIR ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_APPEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 

int FUNC3(struct file *file_in, struct file *file_out)
{
	struct inode *inode_in = FUNC2(file_in);
	struct inode *inode_out = FUNC2(file_out);

	/* Don't copy dirs, pipes, sockets... */
	if (FUNC0(inode_in->i_mode) || FUNC0(inode_out->i_mode))
		return -EISDIR;
	if (!FUNC1(inode_in->i_mode) || !FUNC1(inode_out->i_mode))
		return -EINVAL;

	if (!(file_in->f_mode & FMODE_READ) ||
	    !(file_out->f_mode & FMODE_WRITE) ||
	    (file_out->f_flags & O_APPEND))
		return -EBADF;

	return 0;
}