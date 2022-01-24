#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int max_nid; int /*<<< orphan*/  nid_list_lock; int /*<<< orphan*/  nat_block_bitmap; } ;
struct f2fs_nat_block {TYPE_1__* entries; } ;
typedef  int nid_t ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {int /*<<< orphan*/  block_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 int NAT_ENTRY_PER_BLOCK ; 
 scalar_t__ NEW_ADDR ; 
 struct f2fs_nm_info* FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct f2fs_nat_block* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int,int,int) ; 

__attribute__((used)) static int FUNC10(struct f2fs_sb_info *sbi,
			struct page *nat_page, nid_t start_nid)
{
	struct f2fs_nm_info *nm_i = FUNC1(sbi);
	struct f2fs_nat_block *nat_blk = FUNC5(nat_page);
	block_t blk_addr;
	unsigned int nat_ofs = FUNC0(start_nid);
	int i;

	FUNC2(nat_ofs, nm_i->nat_block_bitmap);

	i = start_nid % NAT_ENTRY_PER_BLOCK;

	for (; i < NAT_ENTRY_PER_BLOCK; i++, start_nid++) {
		if (FUNC8(start_nid >= nm_i->max_nid))
			break;

		blk_addr = FUNC4(nat_blk->entries[i].block_addr);

		if (blk_addr == NEW_ADDR)
			return -EINVAL;

		if (blk_addr == NULL_ADDR) {
			FUNC3(sbi, start_nid, true, true);
		} else {
			FUNC6(&FUNC1(sbi)->nid_list_lock);
			FUNC9(sbi, start_nid, false, true);
			FUNC7(&FUNC1(sbi)->nid_list_lock);
		}
	}

	return 0;
}