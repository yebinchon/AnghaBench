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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/ * pgtable_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct vm_area_struct *vma, unsigned long addr,
		pmd_t *pmd, pfn_t pfn, pgprot_t prot, bool write,
		pgtable_t pgtable)
{
	struct mm_struct *mm = vma->vm_mm;
	pmd_t entry;
	spinlock_t *ptl;

	ptl = FUNC8(mm, pmd);
	if (!FUNC13(*pmd)) {
		if (write) {
			if (FUNC14(*pmd) != FUNC6(pfn)) {
				FUNC0(!FUNC1(*pmd));
				goto out_unlock;
			}
			entry = FUNC12(*pmd);
			entry = FUNC2(FUNC10(entry), vma);
			if (FUNC15(vma, addr, pmd, entry, 1))
				FUNC19(vma, addr, pmd);
		}

		goto out_unlock;
	}

	entry = FUNC11(FUNC5(pfn, prot));
	if (FUNC4(pfn))
		entry = FUNC9(entry);
	if (write) {
		entry = FUNC12(FUNC10(entry));
		entry = FUNC2(entry, vma);
	}

	if (pgtable) {
		FUNC7(mm, pmd, pgtable);
		FUNC3(mm);
		pgtable = NULL;
	}

	FUNC17(mm, addr, pmd, entry);
	FUNC19(vma, addr, pmd);

out_unlock:
	FUNC18(ptl);
	if (pgtable)
		FUNC16(mm, pgtable);
}