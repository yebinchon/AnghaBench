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
struct vm_area_struct {int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; } ;
struct resv_map {int /*<<< orphan*/  refs; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_RESV_OWNER ; 
 struct hstate* FUNC0 (struct vm_area_struct*) ; 
 long FUNC1 (struct hugepage_subpool*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (struct resv_map*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  resv_map_release ; 
 struct hugepage_subpool* FUNC6 (struct vm_area_struct*) ; 
 unsigned long FUNC7 (struct hstate*,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 struct resv_map* FUNC8 (struct vm_area_struct*) ; 

__attribute__((used)) static void FUNC9(struct vm_area_struct *vma)
{
	struct hstate *h = FUNC0(vma);
	struct resv_map *resv = FUNC8(vma);
	struct hugepage_subpool *spool = FUNC6(vma);
	unsigned long reserve, start, end;
	long gbl_reserve;

	if (!resv || !FUNC3(vma, HPAGE_RESV_OWNER))
		return;

	start = FUNC7(h, vma, vma->vm_start);
	end = FUNC7(h, vma, vma->vm_end);

	reserve = (end - start) - FUNC5(resv, start, end);

	FUNC4(&resv->refs, resv_map_release);

	if (reserve) {
		/*
		 * Decrement reserve counts.  The global reserve count may be
		 * adjusted if the subpool has a minimum size.
		 */
		gbl_reserve = FUNC1(spool, reserve);
		FUNC2(h, -gbl_reserve);
	}
}