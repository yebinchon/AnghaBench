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
struct page {int dummy; } ;
struct f2fs_sb_info {scalar_t__ blocks_per_seg; } ;
struct f2fs_nm_info {unsigned int nat_blocks; unsigned int nat_bits_blocks; scalar_t__ full_nat_bits; scalar_t__ empty_nat_bits; scalar_t__ nat_bits; } ;
struct f2fs_checkpoint {int dummy; } ;
typedef  scalar_t__ block_t ;
typedef  int __u64 ;
typedef  scalar_t__ __le64 ;

/* Variables and functions */
 unsigned int BITS_PER_BYTE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  F2FS_BLKSIZE ; 
 unsigned int F2FS_BLKSIZE_BITS ; 
 unsigned int FUNC0 (unsigned int) ; 
 struct f2fs_checkpoint* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct f2fs_nm_info* FUNC3 (struct f2fs_sb_info*) ; 
 int FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct f2fs_checkpoint*) ; 
 int FUNC8 (struct f2fs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 struct page* FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct f2fs_sb_info *sbi)
{
	struct f2fs_checkpoint *ckpt = FUNC1(sbi);
	struct f2fs_nm_info *nm_i = FUNC3(sbi);
	unsigned int nat_bits_bytes = nm_i->nat_blocks / BITS_PER_BYTE;
	unsigned int i;
	__u64 cp_ver = FUNC8(ckpt);
	block_t nat_bits_addr;

	if (!FUNC10(sbi, NULL))
		return 0;

	nm_i->nat_bits_blocks = FUNC0((nat_bits_bytes << 1) + 8);
	nm_i->nat_bits = FUNC12(sbi,
			nm_i->nat_bits_blocks << F2FS_BLKSIZE_BITS, GFP_KERNEL);
	if (!nm_i->nat_bits)
		return -ENOMEM;

	nat_bits_addr = FUNC5(sbi) + sbi->blocks_per_seg -
						nm_i->nat_bits_blocks;
	for (i = 0; i < nm_i->nat_bits_blocks; i++) {
		struct page *page;

		page = FUNC11(sbi, nat_bits_addr++);
		if (FUNC2(page))
			return FUNC4(page);

		FUNC15(nm_i->nat_bits + (i << F2FS_BLKSIZE_BITS),
					FUNC16(page), F2FS_BLKSIZE);
		FUNC14(page, 1);
	}

	cp_ver |= (FUNC7(ckpt) << 32);
	if (FUNC6(cp_ver) != *(__le64 *)nm_i->nat_bits) {
		FUNC9(sbi, true);
		return 0;
	}

	nm_i->full_nat_bits = nm_i->nat_bits + 8;
	nm_i->empty_nat_bits = nm_i->full_nat_bits + nat_bits_bytes;

	FUNC13(sbi, "Found nat_bits in checkpoint");
	return 0;
}