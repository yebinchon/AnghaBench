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
struct f2fs_sb_info {int dummy; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  checksum_offset; } ;
typedef  int /*<<< orphan*/  chksum ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 unsigned int CP_CHKSUM_OFFSET ; 
 scalar_t__ F2FS_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct f2fs_checkpoint*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __u32 FUNC3(struct f2fs_sb_info *sbi,
						struct f2fs_checkpoint *ckpt)
{
	unsigned int chksum_ofs = FUNC2(ckpt->checksum_offset);
	__u32 chksum;

	chksum = FUNC1(sbi, ckpt, chksum_ofs);
	if (chksum_ofs < CP_CHKSUM_OFFSET) {
		chksum_ofs += sizeof(chksum);
		chksum = FUNC0(sbi, chksum, (__u8 *)ckpt + chksum_ofs,
						F2FS_BLKSIZE - chksum_ofs);
	}
	return chksum;
}