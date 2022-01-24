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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,struct vm_area_struct*) ; 
 int FUNC1 (struct mm_struct*,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,struct vm_area_struct*) ; 
 scalar_t__ FUNC2 (struct mm_struct*,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vm_area_struct*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC10(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		pud_t *dst_pud, pud_t *src_pud, struct vm_area_struct *vma,
		unsigned long addr, unsigned long end)
{
	pmd_t *src_pmd, *dst_pmd;
	unsigned long next;

	dst_pmd = FUNC5(dst_mm, dst_pud, addr);
	if (!dst_pmd)
		return -ENOMEM;
	src_pmd = FUNC8(src_pud, addr);
	do {
		next = FUNC4(addr, end);
		if (FUNC3(*src_pmd) || FUNC9(*src_pmd)
			|| FUNC6(*src_pmd)) {
			int err;
			FUNC0(next-addr != HPAGE_PMD_SIZE, vma);
			err = FUNC1(dst_mm, src_mm,
					    dst_pmd, src_pmd, addr, vma);
			if (err == -ENOMEM)
				return -ENOMEM;
			if (!err)
				continue;
			/* fall through */
		}
		if (FUNC7(src_pmd))
			continue;
		if (FUNC2(dst_mm, src_mm, dst_pmd, src_pmd,
						vma, addr, next))
			return -ENOMEM;
	} while (dst_pmd++, src_pmd++, addr = next, addr != end);
	return 0;
}