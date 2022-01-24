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
struct f2fs_nm_info {int /*<<< orphan*/  full_nat_bits; int /*<<< orphan*/  empty_nat_bits; } ;
struct f2fs_nat_block {TYPE_1__* entries; } ;
typedef  int nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  block_addr; } ;

/* Variables and functions */
 int NAT_ENTRY_PER_BLOCK ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct f2fs_nat_block* FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi, nid_t start_nid,
						struct page *page)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	unsigned int nat_index = start_nid / NAT_ENTRY_PER_BLOCK;
	struct f2fs_nat_block *nat_blk = FUNC5(page);
	int valid = 0;
	int i = 0;

	if (!FUNC3(sbi, NULL))
		return;

	if (nat_index == 0) {
		valid = 1;
		i = 1;
	}
	for (; i < NAT_ENTRY_PER_BLOCK; i++) {
		if (FUNC4(nat_blk->entries[i].block_addr) != NULL_ADDR)
			valid++;
	}
	if (valid == 0) {
		FUNC2(nat_index, nm_i->empty_nat_bits);
		FUNC1(nat_index, nm_i->full_nat_bits);
		return;
	}

	FUNC1(nat_index, nm_i->empty_nat_bits);
	if (valid == NAT_ENTRY_PER_BLOCK)
		FUNC2(nat_index, nm_i->full_nat_bits);
	else
		FUNC1(nat_index, nm_i->full_nat_bits);
}