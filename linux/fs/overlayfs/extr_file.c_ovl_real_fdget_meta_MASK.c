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
struct inode {int dummy; } ;
struct file {int f_flags; struct file const* private_data; } ;
struct fd {struct file const* file; scalar_t__ flags; } ;

/* Variables and functions */
 scalar_t__ FDPUT_FPUT ; 
 int O_NOATIME ; 
 int FUNC0 (struct file const*) ; 
 struct inode* FUNC1 (struct file const*) ; 
 int FUNC2 (struct file const*,int) ; 
 struct inode* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 struct file const* FUNC5 (struct file const*,struct inode*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(const struct file *file, struct fd *real,
			       bool allow_meta)
{
	struct inode *inode = FUNC1(file);
	struct inode *realinode;

	real->flags = 0;
	real->file = file->private_data;

	if (allow_meta)
		realinode = FUNC3(inode);
	else
		realinode = FUNC4(inode);

	/* Has it been copied up since we'd opened it? */
	if (FUNC6(FUNC1(real->file) != realinode)) {
		real->flags = FDPUT_FPUT;
		real->file = FUNC5(file, realinode);

		return FUNC0(real->file);
	}

	/* Did the flags change since open? */
	if (FUNC6((file->f_flags ^ real->file->f_flags) & ~O_NOATIME))
		return FUNC2(real->file, file->f_flags);

	return 0;
}