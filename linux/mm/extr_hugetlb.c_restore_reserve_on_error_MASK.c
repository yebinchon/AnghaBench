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
struct hstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int) ; 
 long FUNC3 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 long FUNC5 (struct hstate*,struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hstate *h,
			struct vm_area_struct *vma, unsigned long address,
			struct page *page)
{
	if (FUNC2(FUNC1(page))) {
		long rc = FUNC5(h, vma, address);

		if (FUNC2(rc < 0)) {
			/*
			 * Rare out of memory condition in reserve map
			 * manipulation.  Clear PagePrivate so that
			 * global reserve count will not be incremented
			 * by free_huge_page.  This will make it appear
			 * as though the reservation for this page was
			 * consumed.  This may prevent the task from
			 * faulting in the page at a later time.  This
			 * is better than inconsistent global huge page
			 * accounting of reserve counts.
			 */
			FUNC0(page);
		} else if (rc) {
			rc = FUNC3(h, vma, address);
			if (FUNC2(rc < 0))
				/*
				 * See above comment about rare out of
				 * memory condition.
				 */
				FUNC0(page);
		} else
			FUNC4(h, vma, address);
	}
}