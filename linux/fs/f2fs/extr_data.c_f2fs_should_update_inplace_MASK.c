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
struct f2fs_io_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct f2fs_io_info*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 

bool FUNC3(struct inode *inode, struct f2fs_io_info *fio)
{
	if (FUNC1(inode))
		return true;

	/* if this is cold file, we should overwrite to avoid fragmentation */
	if (FUNC2(inode))
		return true;

	return FUNC0(inode, fio);
}