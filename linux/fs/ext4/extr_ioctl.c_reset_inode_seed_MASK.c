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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_ino; } ;
struct ext4_sb_info {void* s_csum_seed; } ;
struct ext4_inode_info {void* i_csum_seed; } ;
typedef  int /*<<< orphan*/  inum ;
typedef  int /*<<< orphan*/  gen ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct ext4_sb_info*,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
	__le32 inum = FUNC2(inode->i_ino);
	__le32 gen = FUNC2(inode->i_generation);
	__u32 csum;

	if (!FUNC4(inode->i_sb))
		return;

	csum = FUNC3(sbi, sbi->s_csum_seed, (__u8 *)&inum, sizeof(inum));
	ei->i_csum_seed = FUNC3(sbi, csum, (__u8 *)&gen, sizeof(gen));
}