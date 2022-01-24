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
struct inode {scalar_t__ i_flctx; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 scalar_t__ OFFSET_MAX ; 
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct inode*,struct file*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct file *file, loff_t pos, loff_t len,
			     bool write)
{
	struct inode *inode = FUNC0(file);

	if (FUNC4(pos < 0 || len < 0))
		return -EINVAL;

	 if (FUNC4((loff_t) (pos + len) < 0))
		return -EINVAL;

	if (FUNC4(inode->i_flctx && FUNC2(inode))) {
		loff_t end = len ? pos + len - 1 : OFFSET_MAX;
		int retval;

		retval = FUNC1(inode, file, pos, end,
				write ? F_WRLCK : F_RDLCK);
		if (retval < 0)
			return retval;
	}

	return FUNC3(file, write ? MAY_WRITE : MAY_READ);
}