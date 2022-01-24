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
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long PMD_MASK ; 
 scalar_t__ PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct mm_struct *mm, unsigned long address,
			    struct mmu_notifier_range *range,
			    pte_t **ptepp, pmd_t **pmdpp, spinlock_t **ptlp)
{
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *ptep;

	pgd = FUNC9(mm, address);
	if (FUNC8(*pgd) || FUNC23(FUNC7(*pgd)))
		goto out;

	p4d = FUNC6(pgd, address);
	if (FUNC5(*p4d) || FUNC23(FUNC4(*p4d)))
		goto out;

	pud = FUNC21(p4d, address);
	if (FUNC20(*pud) || FUNC23(FUNC19(*pud)))
		goto out;

	pmd = FUNC14(pud, address);
	FUNC0(FUNC15(*pmd));

	if (FUNC11(*pmd)) {
		if (!pmdpp)
			goto out;

		if (range) {
			FUNC3(range, MMU_NOTIFY_CLEAR, 0,
						NULL, mm, address & PMD_MASK,
						(address & PMD_MASK) + PMD_SIZE);
			FUNC2(range);
		}
		*ptlp = FUNC12(mm, pmd);
		if (FUNC11(*pmd)) {
			*pmdpp = pmd;
			return 0;
		}
		FUNC22(*ptlp);
		if (range)
			FUNC1(range);
	}

	if (FUNC13(*pmd) || FUNC23(FUNC10(*pmd)))
		goto out;

	if (range) {
		FUNC3(range, MMU_NOTIFY_CLEAR, 0, NULL, mm,
					address & PAGE_MASK,
					(address & PAGE_MASK) + PAGE_SIZE);
		FUNC2(range);
	}
	ptep = FUNC16(mm, pmd, address, ptlp);
	if (!FUNC17(*ptep))
		goto unlock;
	*ptepp = ptep;
	return 0;
unlock:
	FUNC18(ptep, *ptlp);
	if (range)
		FUNC1(range);
out:
	return -EINVAL;
}