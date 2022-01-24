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
struct page {int dummy; } ;
struct mempolicy {int dummy; } ;
struct hstate {scalar_t__ free_huge_pages; scalar_t__ resv_huge_pages; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*) ; 
 int FUNC3 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,struct mempolicy**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct mempolicy*) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*,long) ; 

__attribute__((used)) static struct page *FUNC6(struct hstate *h,
				struct vm_area_struct *vma,
				unsigned long address, int avoid_reserve,
				long chg)
{
	struct page *page;
	struct mempolicy *mpol;
	gfp_t gfp_mask;
	nodemask_t *nodemask;
	int nid;

	/*
	 * A child process with MAP_PRIVATE mappings created by their parent
	 * have no page reserves. This check ensures that reservations are
	 * not "stolen". The child may still get SIGKILLed
	 */
	if (!FUNC5(vma, chg) &&
			h->free_huge_pages - h->resv_huge_pages == 0)
		goto err;

	/* If reserves cannot be used, ensure enough pages are in the pool */
	if (avoid_reserve && h->free_huge_pages - h->resv_huge_pages == 0)
		goto err;

	gfp_mask = FUNC2(h);
	nid = FUNC3(vma, address, gfp_mask, &mpol, &nodemask);
	page = FUNC1(h, gfp_mask, nid, nodemask);
	if (page && !avoid_reserve && FUNC5(vma, chg)) {
		FUNC0(page);
		h->resv_huge_pages--;
	}

	FUNC4(mpol);
	return page;

err:
	return NULL;
}