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
struct userfaultfd_ctx {struct mm_struct* mm; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC16(struct userfaultfd_ctx *ctx,
					 unsigned long address,
					 unsigned long flags,
					 unsigned long reason)
{
	struct mm_struct *mm = ctx->mm;
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd, _pmd;
	pte_t *pte;
	bool ret = true;

	FUNC1(!FUNC15(&mm->mmap_sem));

	pgd = FUNC4(mm, address);
	if (!FUNC5(*pgd))
		goto out;
	p4d = FUNC2(pgd, address);
	if (!FUNC3(*p4d))
		goto out;
	pud = FUNC13(p4d, address);
	if (!FUNC14(*pud))
		goto out;
	pmd = FUNC7(pud, address);
	/*
	 * READ_ONCE must function as a barrier with narrower scope
	 * and it must be equivalent to:
	 *	_pmd = *pmd; barrier();
	 *
	 * This is to deal with the instability (as in
	 * pmd_trans_unstable) of the pmd.
	 */
	_pmd = FUNC0(*pmd);
	if (FUNC6(_pmd))
		goto out;

	ret = false;
	if (!FUNC8(_pmd))
		goto out;

	if (FUNC9(_pmd))
		goto out;

	/*
	 * the pmd is stable (as in !pmd_trans_unstable) so we can re-read it
	 * and use the standard pte_offset_map() instead of parsing _pmd.
	 */
	pte = FUNC11(pmd, address);
	/*
	 * Lockless access: we're in a wait_event so it's ok if it
	 * changes under us.
	 */
	if (FUNC10(*pte))
		ret = true;
	FUNC12(pte);

out:
	return ret;
}