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
struct ext4_iloc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int FUNC0 (struct inode*,struct ext4_iloc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC2(struct inode *inode, struct ext4_iloc *iloc)
{
	/* We have all inode data except xattrs in memory here. */
	return FUNC0(inode, iloc,
		!FUNC1(inode, EXT4_STATE_XATTR));
}