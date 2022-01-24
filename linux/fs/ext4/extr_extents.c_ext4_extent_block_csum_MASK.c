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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_csum_seed; } ;
struct ext4_extent_header {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext4_extent_header*) ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le32 FUNC5(struct inode *inode,
				     struct ext4_extent_header *eh)
{
	struct ext4_inode_info *ei = FUNC1(inode);
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);
	__u32 csum;

	csum = FUNC4(sbi, ei->i_csum_seed, (__u8 *)eh,
			   FUNC0(eh));
	return FUNC3(csum);
}