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
struct uncharge_gather {unsigned int nr_huge; unsigned int nr_anon; unsigned int nr_file; unsigned int nr_shmem; struct page* dummy_page; int /*<<< orphan*/  nr_kmem; int /*<<< orphan*/  pgpgout; int /*<<< orphan*/ * memcg; } ;
struct page {int /*<<< orphan*/ * mem_cgroup; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 unsigned int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct uncharge_gather*) ; 
 int /*<<< orphan*/  FUNC12 (struct uncharge_gather*) ; 

__attribute__((used)) static void FUNC13(struct page *page, struct uncharge_gather *ug)
{
	FUNC6(FUNC3(page), page);
	FUNC6(FUNC10(page) && !FUNC9(page) &&
			!FUNC1(page) , page);

	if (!page->mem_cgroup)
		return;

	/*
	 * Nobody should be changing or seriously looking at
	 * page->mem_cgroup at this point, we have fully
	 * exclusive access to the page.
	 */

	if (ug->memcg != page->mem_cgroup) {
		if (ug->memcg) {
			FUNC11(ug);
			FUNC12(ug);
		}
		ug->memcg = page->mem_cgroup;
	}

	if (!FUNC2(page)) {
		unsigned int nr_pages = 1;

		if (FUNC5(page)) {
			nr_pages = FUNC8(page);
			ug->nr_huge += nr_pages;
		}
		if (FUNC0(page))
			ug->nr_anon += nr_pages;
		else {
			ug->nr_file += nr_pages;
			if (FUNC4(page))
				ug->nr_shmem += nr_pages;
		}
		ug->pgpgout++;
	} else {
		ug->nr_kmem += FUNC8(page);
		FUNC7(page);
	}

	ug->dummy_page = page;
	page->mem_cgroup = NULL;
}