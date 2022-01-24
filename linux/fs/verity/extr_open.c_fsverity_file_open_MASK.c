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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int EPERM ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *inode, struct file *filp)
{
	if (!FUNC0(inode))
		return 0;

	if (filp->f_mode & FMODE_WRITE) {
		FUNC2("Denying opening verity file (ino %lu) for write\n",
			 inode->i_ino);
		return -EPERM;
	}

	return FUNC1(inode);
}