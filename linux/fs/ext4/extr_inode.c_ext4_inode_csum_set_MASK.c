#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_inode_info {int dummy; } ;
struct ext4_inode {void* i_checksum_hi; void* i_checksum_lo; } ;
typedef  int __u32 ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {scalar_t__ s_creator_os; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_inode*,struct ext4_inode_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_OS_LINUX ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ; 
 int /*<<< orphan*/  i_checksum_hi ; 

__attribute__((used)) static void FUNC7(struct inode *inode, struct ext4_inode *raw,
				struct ext4_inode_info *ei)
{
	__u32 csum;

	if (FUNC2(inode->i_sb)->s_es->s_creator_os !=
	    FUNC4(EXT4_OS_LINUX) ||
	    !FUNC5(inode->i_sb))
		return;

	csum = FUNC6(inode, raw, ei);
	raw->i_checksum_lo = FUNC3(csum & 0xFFFF);
	if (FUNC1(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE &&
	    FUNC0(raw, ei, i_checksum_hi))
		raw->i_checksum_hi = FUNC3(csum >> 16);
}