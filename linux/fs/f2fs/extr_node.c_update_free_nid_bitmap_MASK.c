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
struct f2fs_nm_info {int /*<<< orphan*/ * free_nid_count; int /*<<< orphan*/ * free_nid_bitmap; int /*<<< orphan*/  nat_block_bitmap; } ;
typedef  unsigned int nid_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 struct f2fs_nm_info* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi, nid_t nid,
							bool set, bool build)
{
	struct f2fs_nm_info *nm_i = FUNC1(sbi);
	unsigned int nat_ofs = FUNC0(nid);
	unsigned int nid_ofs = nid - FUNC2(nid);

	if (!FUNC5(nat_ofs, nm_i->nat_block_bitmap))
		return;

	if (set) {
		if (FUNC5(nid_ofs, nm_i->free_nid_bitmap[nat_ofs]))
			return;
		FUNC4(nid_ofs, nm_i->free_nid_bitmap[nat_ofs]);
		nm_i->free_nid_count[nat_ofs]++;
	} else {
		if (!FUNC5(nid_ofs, nm_i->free_nid_bitmap[nat_ofs]))
			return;
		FUNC3(nid_ofs, nm_i->free_nid_bitmap[nat_ofs]);
		if (!build)
			nm_i->free_nid_count[nat_ofs]--;
	}
}