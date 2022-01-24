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
struct hstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_ORDER_NR_PAGES ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*) ; 
 int FUNC6 (struct page*) ; 
 struct hstate* FUNC7 (struct page*) ; 
 int FUNC8 (struct hstate*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct page *dst, struct page *src)
{
	int i;
	int nr_pages;

	if (FUNC1(src)) {
		/* hugetlbfs page */
		struct hstate *h = FUNC7(src);
		nr_pages = FUNC8(h);

		if (FUNC9(nr_pages > MAX_ORDER_NR_PAGES)) {
			FUNC3(dst, src, nr_pages);
			return;
		}
	} else {
		/* thp page */
		FUNC0(!FUNC2(src));
		nr_pages = FUNC6(src);
	}

	for (i = 0; i < nr_pages; i++) {
		FUNC4();
		FUNC5(dst + i, src + i);
	}
}