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
struct TYPE_2__ {int /*<<< orphan*/ * count; } ;
struct mm_struct {int /*<<< orphan*/  pmd_huge_pte; TYPE_1__ rss_stat; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int NR_MM_COUNTERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct mm_struct*,...) ; 
 int /*<<< orphan*/ * resident_page_types ; 
 scalar_t__ FUNC6 (long) ; 

__attribute__((used)) static void FUNC7(struct mm_struct *mm)
{
	int i;

	FUNC1(FUNC0(resident_page_types) != NR_MM_COUNTERS,
			 "Please make sure 'struct resident_page_types[]' is updated as well");

	for (i = 0; i < NR_MM_COUNTERS; i++) {
		long x = FUNC3(&mm->rss_stat.count[i]);

		if (FUNC6(x))
			FUNC5("BUG: Bad rss-counter state mm:%p type:%s val:%ld\n",
				 mm, resident_page_types[i], x);
	}

	if (FUNC4(mm))
		FUNC5("BUG: non-zero pgtables_bytes on freeing mm: %ld\n",
				FUNC4(mm));

#if defined(CONFIG_TRANSPARENT_HUGEPAGE) && !USE_SPLIT_PMD_PTLOCKS
	VM_BUG_ON_MM(mm->pmd_huge_pte, mm);
#endif
}