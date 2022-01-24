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
typedef  int umode_t ;
struct inode {int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSETID ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISGID ; 
 int S_IXGRP ; 
 int /*<<< orphan*/  FUNC1 (struct inode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct inode *inode, const struct inode *dir,
			umode_t mode)
{
	inode->i_uid = FUNC3();
	if (dir && dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;

		/* Directories are special, and always inherit S_ISGID */
		if (FUNC0(mode))
			mode |= S_ISGID;
		else if ((mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP) &&
			 !FUNC4(inode->i_gid) &&
			 !FUNC1(dir, CAP_FSETID))
			mode &= ~S_ISGID;
	} else
		inode->i_gid = FUNC2();
	inode->i_mode = mode;
}