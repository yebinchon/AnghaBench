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
struct page {TYPE_1__* mapping; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct page *page, gfp_t wait)
{
	journal_t *journal = FUNC0(page->mapping->host);

	FUNC3(page);

	/* Page has dirty journalled data -> cannot release */
	if (FUNC1(page))
		return 0;
	if (journal)
		return FUNC2(journal, page, wait);
	else
		return FUNC4(page);
}