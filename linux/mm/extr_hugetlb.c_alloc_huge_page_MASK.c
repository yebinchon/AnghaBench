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
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct hugetlb_cgroup {int dummy; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int /*<<< orphan*/  hugepage_activelist; int /*<<< orphan*/  resv_huge_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 struct page* FUNC3 (struct hstate*,struct vm_area_struct*,unsigned long,int,long) ; 
 int FUNC4 (struct hstate*) ; 
 struct hstate* FUNC5 (struct vm_area_struct*) ; 
 long FUNC6 (struct hugepage_subpool*,int) ; 
 long FUNC7 (struct hugepage_subpool*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hstate*,long) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,struct hugetlb_cgroup**) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,struct hugetlb_cgroup*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,struct hugetlb_cgroup*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct hugepage_subpool* FUNC17 (struct vm_area_struct*) ; 
 scalar_t__ FUNC18 (int) ; 
 long FUNC19 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC21 (struct vm_area_struct*,long) ; 
 long FUNC22 (struct hstate*,struct vm_area_struct*,unsigned long) ; 

struct page *FUNC23(struct vm_area_struct *vma,
				    unsigned long addr, int avoid_reserve)
{
	struct hugepage_subpool *spool = FUNC17(vma);
	struct hstate *h = FUNC5(vma);
	struct page *page;
	long map_chg, map_commit;
	long gbl_chg;
	int ret, idx;
	struct hugetlb_cgroup *h_cg;

	idx = FUNC4(h);
	/*
	 * Examine the region/reserve map to determine if the process
	 * has a reservation for the page to be allocated.  A return
	 * code of zero indicates a reservation exists (no change).
	 */
	map_chg = gbl_chg = FUNC22(h, vma, addr);
	if (map_chg < 0)
		return FUNC0(-ENOMEM);

	/*
	 * Processes that did not create the mapping will have no
	 * reserves as indicated by the region/reserve map. Check
	 * that the allocation will not exceed the subpool limit.
	 * Allocations for MAP_NORESERVE mappings also need to be
	 * checked against any subpool limit.
	 */
	if (map_chg || avoid_reserve) {
		gbl_chg = FUNC6(spool, 1);
		if (gbl_chg < 0) {
			FUNC20(h, vma, addr);
			return FUNC0(-ENOSPC);
		}

		/*
		 * Even though there was no reservation in the region/reserve
		 * map, there could be reservations associated with the
		 * subpool that can be used.  This would be indicated if the
		 * return value of hugepage_subpool_get_pages() is zero.
		 * However, if avoid_reserve is specified we still avoid even
		 * the subpool reservations.
		 */
		if (avoid_reserve)
			gbl_chg = 1;
	}

	ret = FUNC9(idx, FUNC13(h), &h_cg);
	if (ret)
		goto out_subpool_put;

	FUNC15(&hugetlb_lock);
	/*
	 * glb_chg is passed to indicate whether or not a page must be taken
	 * from the global free pool (global change).  gbl_chg == 0 indicates
	 * a reservation exists for the allocation.
	 */
	page = FUNC3(h, vma, addr, avoid_reserve, gbl_chg);
	if (!page) {
		FUNC16(&hugetlb_lock);
		page = FUNC2(h, vma, addr);
		if (!page)
			goto out_uncharge_cgroup;
		if (!avoid_reserve && FUNC21(vma, gbl_chg)) {
			FUNC1(page);
			h->resv_huge_pages--;
		}
		FUNC15(&hugetlb_lock);
		FUNC12(&page->lru, &h->hugepage_activelist);
		/* Fall through */
	}
	FUNC10(idx, FUNC13(h), h_cg, page);
	FUNC16(&hugetlb_lock);

	FUNC14(page, (unsigned long)spool);

	map_commit = FUNC19(h, vma, addr);
	if (FUNC18(map_chg > map_commit)) {
		/*
		 * The page was added to the reservation map between
		 * vma_needs_reservation and vma_commit_reservation.
		 * This indicates a race with hugetlb_reserve_pages.
		 * Adjust for the subpool count incremented above AND
		 * in hugetlb_reserve_pages for the same page.  Also,
		 * the reservation count added in hugetlb_reserve_pages
		 * no longer applies.
		 */
		long rsv_adjust;

		rsv_adjust = FUNC7(spool, 1);
		FUNC8(h, -rsv_adjust);
	}
	return page;

out_uncharge_cgroup:
	FUNC11(idx, FUNC13(h), h_cg);
out_subpool_put:
	if (map_chg || avoid_reserve)
		FUNC7(spool, 1);
	FUNC20(h, vma, addr);
	return FUNC0(-ENOSPC);
}