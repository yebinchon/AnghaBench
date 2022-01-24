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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSHUGE_PAGE_DTOR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 

void FUNC3(struct page *page)
{
	/*
	 * we use page->mapping and page->indexlru in second tail page
	 * as list_head: assuming THP order >= 2
	 */

	FUNC0(FUNC1(page));
	FUNC2(page, TRANSHUGE_PAGE_DTOR);
}