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
struct writeback_control {int dummy; } ;
struct inode {scalar_t__ i_ino; } ;

/* Variables and functions */
 scalar_t__ HFSPLUS_FIRSTUSER_CNID ; 
 scalar_t__ HFSPLUS_ROOT_CNID ; 
 int /*<<< orphan*/  INODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode,
		struct writeback_control *wbc)
{
	int err;

	FUNC0(INODE, "hfsplus_write_inode: %lu\n", inode->i_ino);

	err = FUNC2(inode);
	if (err)
		return err;

	if (inode->i_ino >= HFSPLUS_FIRSTUSER_CNID ||
	    inode->i_ino == HFSPLUS_ROOT_CNID)
		return FUNC1(inode);
	else
		return FUNC3(inode);
}