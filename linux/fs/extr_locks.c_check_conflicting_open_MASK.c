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
struct inode {int /*<<< orphan*/  i_readcount; int /*<<< orphan*/  i_writecount; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FL_LAYOUT ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 long const F_RDLCK ; 
 long const F_WRLCK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 

__attribute__((used)) static int
FUNC3(struct file *filp, const long arg, int flags)
{
	struct inode *inode = FUNC2(filp);
	int self_wcount = 0, self_rcount = 0;

	if (flags & FL_LAYOUT)
		return 0;

	if (arg == F_RDLCK)
		return FUNC1(inode) ? -EAGAIN : 0;
	else if (arg != F_WRLCK)
		return 0;

	/*
	 * Make sure that only read/write count is from lease requestor.
	 * Note that this will result in denying write leases when i_writecount
	 * is negative, which is what we want.  (We shouldn't grant write leases
	 * on files open for execution.)
	 */
	if (filp->f_mode & FMODE_WRITE)
		self_wcount = 1;
	else if (filp->f_mode & FMODE_READ)
		self_rcount = 1;

	if (FUNC0(&inode->i_writecount) != self_wcount ||
	    FUNC0(&inode->i_readcount) != self_rcount)
		return -EAGAIN;

	return 0;
}