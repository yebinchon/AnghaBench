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
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int __ATOMIC_FILE ; 
 int __DIR_FILE ; 
 int __META_FILE ; 
 int __MISC_FILE ; 
 int __NODE_FILE ; 
 int __NORMAL_FILE ; 
 int __VOLATILE_FILE ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, pid_t pid)
{
	if (FUNC4(inode))
		return __ATOMIC_FILE;
	else if (FUNC5(inode))
		return __VOLATILE_FILE;
	else if (FUNC3(inode->i_mode))
		return __DIR_FILE;
	else if (inode->i_ino == FUNC2(FUNC0(inode)))
		return __NODE_FILE;
	else if (inode->i_ino == FUNC1(FUNC0(inode)))
		return __META_FILE;
	else if (pid)
		return __NORMAL_FILE;
	else
		return __MISC_FILE;
}