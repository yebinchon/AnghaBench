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
 int MAX_ORDER_NR_PAGES ; 
 int FUNC0 (struct page*) ; 
 struct page* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline struct page *FUNC4(struct page *iter,
						struct page *base, int offset)
{
	if (FUNC3((offset & (MAX_ORDER_NR_PAGES - 1)) == 0)) {
		unsigned long pfn = FUNC0(base) + offset;
		if (!FUNC2(pfn))
			return NULL;
		return FUNC1(pfn);
	}
	return iter + 1;
}