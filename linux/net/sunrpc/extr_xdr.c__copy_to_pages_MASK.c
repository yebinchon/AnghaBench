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
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 char* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct page **pages, size_t pgbase, const char *p, size_t len)
{
	struct page **pgto;
	char *vto;
	size_t copy;

	pgto = pages + (pgbase >> PAGE_SHIFT);
	pgbase &= ~PAGE_MASK;

	for (;;) {
		copy = PAGE_SIZE - pgbase;
		if (copy > len)
			copy = len;

		vto = FUNC1(*pgto);
		FUNC3(vto + pgbase, p, copy);
		FUNC2(vto);

		len -= copy;
		if (len == 0)
			break;

		pgbase += copy;
		if (pgbase == PAGE_SIZE) {
			FUNC0(*pgto);
			pgbase = 0;
			pgto++;
		}
		p += copy;
	}
	FUNC0(*pgto);
}