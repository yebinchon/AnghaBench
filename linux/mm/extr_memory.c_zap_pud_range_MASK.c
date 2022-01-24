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
struct zap_details {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mmu_gather {TYPE_1__* mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  p4d_t ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long HPAGE_PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC10 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,struct zap_details*) ; 

__attribute__((used)) static inline unsigned long FUNC11(struct mmu_gather *tlb,
				struct vm_area_struct *vma, p4d_t *p4d,
				unsigned long addr, unsigned long end,
				struct zap_details *details)
{
	pud_t *pud;
	unsigned long next;

	pud = FUNC5(p4d, addr);
	do {
		next = FUNC2(addr, end);
		if (FUNC6(*pud) || FUNC3(*pud)) {
			if (next - addr != HPAGE_PUD_SIZE) {
				FUNC0(!FUNC7(&tlb->mm->mmap_sem), vma);
				FUNC8(vma, pud, addr);
			} else if (FUNC9(tlb, vma, pud, addr))
				goto next;
			/* fall through */
		}
		if (FUNC4(pud))
			continue;
		next = FUNC10(tlb, vma, pud, addr, next, details);
next:
		FUNC1();
	} while (pud++, addr = next, addr != end);

	return addr;
}