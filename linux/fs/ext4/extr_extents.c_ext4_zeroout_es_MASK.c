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
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_STATUS_WRITTEN ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct ext4_extent *ex)
{
	ext4_lblk_t  ee_block;
	ext4_fsblk_t ee_pblock;
	unsigned int ee_len;

	ee_block  = FUNC3(ex->ee_block);
	ee_len    = FUNC1(ex);
	ee_pblock = FUNC2(ex);

	if (ee_len == 0)
		return 0;

	return FUNC0(inode, ee_block, ee_len, ee_pblock,
				     EXTENT_STATUS_WRITTEN);
}