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
struct inode {int dummy; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  opencnt; struct inode* rsrc_inode; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ MAX_NON_LFS ; 
 int O_LARGEFILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (FUNC1(inode))
		inode = FUNC0(inode)->rsrc_inode;
	if (!(file->f_flags & O_LARGEFILE) && FUNC3(inode) > MAX_NON_LFS)
		return -EOVERFLOW;
	FUNC2(&FUNC0(inode)->opencnt);
	return 0;
}