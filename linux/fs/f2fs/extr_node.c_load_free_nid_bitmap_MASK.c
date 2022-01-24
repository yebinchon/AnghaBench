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
struct f2fs_nm_info {unsigned int nat_blocks; int /*<<< orphan*/  nat_block_bitmap; int /*<<< orphan*/  full_nat_bits; int /*<<< orphan*/  nid_list_lock; int /*<<< orphan*/  empty_nat_bits; } ;
typedef  unsigned int nid_t ;

/* Variables and functions */
 unsigned int NAT_ENTRY_PER_BLOCK ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,unsigned int,int,int) ; 

__attribute__((used)) static inline void FUNC7(struct f2fs_sb_info *sbi)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	unsigned int i = 0;
	nid_t nid, last_nid;

	if (!FUNC2(sbi, NULL))
		return;

	for (i = 0; i < nm_i->nat_blocks; i++) {
		i = FUNC3(nm_i->empty_nat_bits, nm_i->nat_blocks, i);
		if (i >= nm_i->nat_blocks)
			break;

		FUNC1(i, nm_i->nat_block_bitmap);

		nid = i * NAT_ENTRY_PER_BLOCK;
		last_nid = nid + NAT_ENTRY_PER_BLOCK;

		FUNC4(&FUNC0(sbi)->nid_list_lock);
		for (; nid < last_nid; nid++)
			FUNC6(sbi, nid, true, true);
		FUNC5(&FUNC0(sbi)->nid_list_lock);
	}

	for (i = 0; i < nm_i->nat_blocks; i++) {
		i = FUNC3(nm_i->full_nat_bits, nm_i->nat_blocks, i);
		if (i >= nm_i->nat_blocks)
			break;

		FUNC1(i, nm_i->nat_block_bitmap);
	}
}