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
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long HPAGE_PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,struct vm_area_struct*) ; 
 int FUNC1 (struct mm_struct*,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,struct vm_area_struct*) ; 
 scalar_t__ FUNC2 (struct mm_struct*,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vm_area_struct*,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		p4d_t *dst_p4d, p4d_t *src_p4d, struct vm_area_struct *vma,
		unsigned long addr, unsigned long end)
{
	pud_t *src_pud, *dst_pud;
	unsigned long next;

	dst_pud = FUNC4(dst_mm, dst_p4d, addr);
	if (!dst_pud)
		return -ENOMEM;
	src_pud = FUNC7(src_p4d, addr);
	do {
		next = FUNC3(addr, end);
		if (FUNC8(*src_pud) || FUNC5(*src_pud)) {
			int err;

			FUNC0(next-addr != HPAGE_PUD_SIZE, vma);
			err = FUNC1(dst_mm, src_mm,
					    dst_pud, src_pud, addr, vma);
			if (err == -ENOMEM)
				return -ENOMEM;
			if (!err)
				continue;
			/* fall through */
		}
		if (FUNC6(src_pud))
			continue;
		if (FUNC2(dst_mm, src_mm, dst_pud, src_pud,
						vma, addr, next))
			return -ENOMEM;
	} while (dst_pud++, src_pud++, addr = next, addr != end);
	return 0;
}