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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC6(struct page **pages, size_t pgto_base,
		size_t pgfrom_base, size_t len)
{
	struct page **pgfrom, **pgto;
	char *vfrom, *vto;
	size_t copy;

	FUNC0(pgto_base <= pgfrom_base);

	pgto_base += len;
	pgfrom_base += len;

	pgto = pages + (pgto_base >> PAGE_SHIFT);
	pgfrom = pages + (pgfrom_base >> PAGE_SHIFT);

	pgto_base &= ~PAGE_MASK;
	pgfrom_base &= ~PAGE_MASK;

	do {
		/* Are any pointers crossing a page boundary? */
		if (pgto_base == 0) {
			pgto_base = PAGE_SIZE;
			pgto--;
		}
		if (pgfrom_base == 0) {
			pgfrom_base = PAGE_SIZE;
			pgfrom--;
		}

		copy = len;
		if (copy > pgto_base)
			copy = pgto_base;
		if (copy > pgfrom_base)
			copy = pgfrom_base;
		pgto_base -= copy;
		pgfrom_base -= copy;

		vto = FUNC2(*pgto);
		if (*pgto != *pgfrom) {
			vfrom = FUNC2(*pgfrom);
			FUNC4(vto + pgto_base, vfrom + pgfrom_base, copy);
			FUNC3(vfrom);
		} else
			FUNC5(vto + pgto_base, vto + pgfrom_base, copy);
		FUNC1(*pgto);
		FUNC3(vto);

	} while ((len -= copy) != 0);
}