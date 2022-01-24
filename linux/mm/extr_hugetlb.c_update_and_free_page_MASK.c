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
struct page {int flags; } ;
struct hstate {int /*<<< orphan*/ * nr_huge_pages_node; int /*<<< orphan*/  nr_huge_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_COMPOUND_DTOR ; 
 int PG_active ; 
 int PG_dirty ; 
 int PG_error ; 
 int PG_locked ; 
 int PG_private ; 
 int PG_referenced ; 
 int PG_writeback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC6 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 size_t FUNC8 (struct page*) ; 
 int FUNC9 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static void FUNC12(struct hstate *h, struct page *page)
{
	int i;

	if (FUNC5(h) && !FUNC4())
		return;

	h->nr_huge_pages--;
	h->nr_huge_pages_node[FUNC8(page)]--;
	for (i = 0; i < FUNC9(h); i++) {
		page[i].flags &= ~(1 << PG_locked | 1 << PG_error |
				1 << PG_referenced | 1 << PG_dirty |
				1 << PG_active | 1 << PG_private |
				1 << PG_writeback);
	}
	FUNC0(FUNC7(page), page);
	FUNC10(page, NULL_COMPOUND_DTOR);
	FUNC11(page);
	if (FUNC5(h)) {
		FUNC2(page, FUNC6(h));
		FUNC3(page, FUNC6(h));
	} else {
		FUNC1(page, FUNC6(h));
	}
}