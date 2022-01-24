#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mode; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int sysctl_protected_fifos ; 
 int sysctl_protected_regular ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dentry * const dir,
				struct inode * const inode)
{
	if ((!sysctl_protected_fifos && FUNC0(inode->i_mode)) ||
	    (!sysctl_protected_regular && FUNC1(inode->i_mode)) ||
	    FUNC3(!(dir->d_inode->i_mode & S_ISVTX)) ||
	    FUNC4(inode->i_uid, dir->d_inode->i_uid) ||
	    FUNC4(FUNC2(), inode->i_uid))
		return 0;

	if (FUNC3(dir->d_inode->i_mode & 0002) ||
	    (dir->d_inode->i_mode & 0020 &&
	     ((sysctl_protected_fifos >= 2 && FUNC0(inode->i_mode)) ||
	      (sysctl_protected_regular >= 2 && FUNC1(inode->i_mode))))) {
		return -EACCES;
	}
	return 0;
}