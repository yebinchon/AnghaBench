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
struct f2fs_nm_info {int next_scan_nid; int max_nid; int* nid_cnt; int ra_nid_pages; int /*<<< orphan*/  nat_tree_lock; int /*<<< orphan*/  nat_block_bitmap; } ;
typedef  int nid_t ;

/* Variables and functions */
 size_t FREE_NID ; 
 int /*<<< orphan*/  FREE_NIDS ; 
 int FREE_NID_PAGES ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  META_NAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NAT_ENTRY_PER_BLOCK ; 
 struct f2fs_nm_info* FUNC2 (struct f2fs_sb_info*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC10 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int FUNC13 (struct f2fs_sb_info*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct f2fs_sb_info *sbi,
						bool sync, bool mount)
{
	struct f2fs_nm_info *nm_i = FUNC2(sbi);
	int i = 0, ret;
	nid_t nid = nm_i->next_scan_nid;

	if (FUNC15(nid >= nm_i->max_nid))
		nid = 0;

	/* Enough entries */
	if (nm_i->nid_cnt[FREE_NID] >= NAT_ENTRY_PER_BLOCK)
		return 0;

	if (!sync && !FUNC5(sbi, FREE_NIDS))
		return 0;

	if (!mount) {
		/* try to find free nids in free_nid_bitmap */
		FUNC12(sbi);

		if (nm_i->nid_cnt[FREE_NID] >= NAT_ENTRY_PER_BLOCK)
			return 0;
	}

	/* readahead nat pages to be scanned */
	FUNC9(sbi, FUNC1(nid), FREE_NID_PAGES,
							META_NAT, true);

	FUNC4(&nm_i->nat_tree_lock);

	while (1) {
		if (!FUNC14(FUNC1(nid),
						nm_i->nat_block_bitmap)) {
			struct page *page = FUNC10(sbi, nid);

			if (FUNC0(page)) {
				ret = FUNC3(page);
			} else {
				ret = FUNC13(sbi, page, nid);
				FUNC8(page, 1);
			}

			if (ret) {
				FUNC16(&nm_i->nat_tree_lock);
				FUNC6(sbi, !mount);
				FUNC7(sbi, "NAT is corrupt, run fsck to fix it");
				return ret;
			}
		}

		nid += (NAT_ENTRY_PER_BLOCK - (nid % NAT_ENTRY_PER_BLOCK));
		if (FUNC15(nid >= nm_i->max_nid))
			nid = 0;

		if (++i >= FREE_NID_PAGES)
			break;
	}

	/* go to the next free nat pages to find free nids abundantly */
	nm_i->next_scan_nid = nid;

	/* find free nids from current sum_pages */
	FUNC11(sbi);

	FUNC16(&nm_i->nat_tree_lock);

	FUNC9(sbi, FUNC1(nm_i->next_scan_nid),
					nm_i->ra_nid_pages, META_NAT, false);

	return 0;
}