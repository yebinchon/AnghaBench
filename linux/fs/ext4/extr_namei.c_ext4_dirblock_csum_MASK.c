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
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __le32 FUNC4(struct inode *inode, void *dirent, int size)
{
	struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
	struct ext4_inode_info *ei = FUNC0(inode);
	__u32 csum;

	csum = FUNC3(sbi, ei->i_csum_seed, (__u8 *)dirent, size);
	return FUNC2(csum);
}