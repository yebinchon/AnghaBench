#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct address_space {unsigned long nrpages; int /*<<< orphan*/  i_pages; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_15__ {scalar_t__ xa_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  add_total ; 
 unsigned long FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,scalar_t__) ; 
 struct address_space* FUNC15 (TYPE_1__) ; 
 scalar_t__ FUNC16 (TYPE_1__) ; 
 TYPE_2__ xas ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,struct page*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 

int FUNC24(struct page *page, swp_entry_t entry, gfp_t gfp)
{
	struct address_space *address_space = FUNC15(entry);
	pgoff_t idx = FUNC16(entry);
	FUNC7(xas, &address_space->i_pages, idx, FUNC10(page));
	unsigned long i, nr = FUNC9(page);

	FUNC6(!FUNC2(page), page);
	FUNC6(FUNC4(page), page);
	FUNC6(!FUNC3(page), page);

	FUNC12(page, nr);
	FUNC5(page);

	do {
		FUNC19(&xas);
		FUNC17(&xas);
		if (FUNC18(&xas))
			goto unlock;
		for (i = 0; i < nr; i++) {
			FUNC6(xas.xa_index != idx + i, page);
			FUNC14(page + i, entry.val + i);
			FUNC22(&xas, page);
			FUNC20(&xas);
		}
		address_space->nrpages += nr;
		FUNC8(FUNC11(page), NR_FILE_PAGES, nr);
		FUNC0(add_total, nr);
unlock:
		FUNC23(&xas);
	} while (FUNC21(&xas, gfp));

	if (!FUNC18(&xas))
		return 0;

	FUNC1(page);
	FUNC13(page, nr);
	return FUNC18(&xas);
}