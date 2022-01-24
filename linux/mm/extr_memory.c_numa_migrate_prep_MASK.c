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

/* Variables and functions */
 int /*<<< orphan*/  NUMA_HINT_FAULTS ; 
 int /*<<< orphan*/  NUMA_HINT_FAULTS_LOCAL ; 
 int TNF_FAULT_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct page *page, struct vm_area_struct *vma,
				unsigned long addr, int page_nid,
				int *flags)
{
	FUNC1(page);

	FUNC0(NUMA_HINT_FAULTS);
	if (page_nid == FUNC3()) {
		FUNC0(NUMA_HINT_FAULTS_LOCAL);
		*flags |= TNF_FAULT_LOCAL;
	}

	return FUNC2(page, vma, addr);
}