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
struct f2fs_sb_info {int dummy; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  checksum_offset; } ;
typedef  int /*<<< orphan*/  block_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 size_t CP_CHKSUM_OFFSET ; 
 size_t CP_MIN_CHKSUM_OFFSET ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct f2fs_checkpoint*) ; 
 unsigned long long FUNC3 (struct f2fs_checkpoint*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*,struct f2fs_checkpoint*) ; 
 struct page* FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,char*,...) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct f2fs_sb_info *sbi, block_t cp_addr,
		struct f2fs_checkpoint **cp_block, struct page **cp_page,
		unsigned long long *version)
{
	size_t crc_offset = 0;
	__u32 crc;

	*cp_page = FUNC5(sbi, cp_addr);
	if (FUNC0(*cp_page))
		return FUNC1(*cp_page);

	*cp_block = (struct f2fs_checkpoint *)FUNC9(*cp_page);

	crc_offset = FUNC8((*cp_block)->checksum_offset);
	if (crc_offset < CP_MIN_CHKSUM_OFFSET ||
			crc_offset > CP_CHKSUM_OFFSET) {
		FUNC6(*cp_page, 1);
		FUNC7(sbi, "invalid crc_offset: %zu", crc_offset);
		return -EINVAL;
	}

	crc = FUNC4(sbi, *cp_block);
	if (crc != FUNC2(*cp_block)) {
		FUNC6(*cp_page, 1);
		FUNC7(sbi, "invalid crc value");
		return -EINVAL;
	}

	*version = FUNC3(*cp_block);
	return 0;
}