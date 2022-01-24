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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_GET_BLOCKS_IO_CREATE_EXT ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct inode *inode, sector_t iblock,
			     struct buffer_head *bh_result, int create)
{
	FUNC1("ext4_get_block_unwritten: inode %lu, create flag %d\n",
		   inode->i_ino, create);
	return FUNC0(inode, iblock, bh_result,
			       EXT4_GET_BLOCKS_IO_CREATE_EXT);
}