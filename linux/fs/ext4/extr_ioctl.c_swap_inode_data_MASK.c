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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_version; } ;
struct ext4_inode_info {unsigned long i_flags; int /*<<< orphan*/  i_disksize; int /*<<< orphan*/  i_data; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 unsigned long EXT4_FL_SHOULD_SWAP ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode1, struct inode *inode2)
{
	loff_t isize;
	struct ext4_inode_info *ei1;
	struct ext4_inode_info *ei2;
	unsigned long tmp;

	ei1 = FUNC0(inode1);
	ei2 = FUNC0(inode2);

	FUNC5(inode1->i_version, inode2->i_version);
	FUNC5(inode1->i_atime, inode2->i_atime);
	FUNC5(inode1->i_mtime, inode2->i_mtime);

	FUNC4(ei1->i_data, ei2->i_data, sizeof(ei1->i_data));
	tmp = ei1->i_flags & EXT4_FL_SHOULD_SWAP;
	ei1->i_flags = (ei2->i_flags & EXT4_FL_SHOULD_SWAP) |
		(ei1->i_flags & ~EXT4_FL_SHOULD_SWAP);
	ei2->i_flags = tmp | (ei2->i_flags & ~EXT4_FL_SHOULD_SWAP);
	FUNC5(ei1->i_disksize, ei2->i_disksize);
	FUNC1(inode1, 0, EXT_MAX_BLOCKS);
	FUNC1(inode2, 0, EXT_MAX_BLOCKS);

	isize = FUNC2(inode1);
	FUNC3(inode1, FUNC2(inode2));
	FUNC3(inode2, isize);
}