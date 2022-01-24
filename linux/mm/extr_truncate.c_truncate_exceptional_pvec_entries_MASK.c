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
struct pagevec {int nr; struct page** pages; } ;
struct page {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct address_space*,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,scalar_t__) ; 
 int FUNC2 (struct address_space*) ; 
 int FUNC3 (struct pagevec*) ; 
 scalar_t__ FUNC4 (struct address_space*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct address_space *mapping,
				struct pagevec *pvec, pgoff_t *indices,
				pgoff_t end)
{
	int i, j;
	bool dax, lock;

	/* Handled by shmem itself */
	if (FUNC4(mapping))
		return;

	for (j = 0; j < FUNC3(pvec); j++)
		if (FUNC6(pvec->pages[j]))
			break;

	if (j == FUNC3(pvec))
		return;

	dax = FUNC2(mapping);
	lock = !dax && indices[j] < end;
	if (lock)
		FUNC7(&mapping->i_pages);

	for (i = j; i < FUNC3(pvec); i++) {
		struct page *page = pvec->pages[i];
		pgoff_t index = indices[i];

		if (!FUNC6(page)) {
			pvec->pages[j++] = page;
			continue;
		}

		if (index >= end)
			continue;

		if (FUNC5(dax)) {
			FUNC1(mapping, index);
			continue;
		}

		FUNC0(mapping, index, page);
	}

	if (lock)
		FUNC8(&mapping->i_pages);
	pvec->nr = j;
}