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
struct zone {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 struct zone* FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 struct page* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 

__attribute__((used)) static struct page *FUNC12(struct zone *zone, unsigned long pfn)
{
	struct page *page;

	if (!FUNC9(pfn))
		return NULL;

	page = FUNC8(pfn);
	if (!page || FUNC6(page) != zone)
		return NULL;

	FUNC0(FUNC1(page));

	if (FUNC10(page) || FUNC11(page))
		return NULL;

	if (FUNC2(page))
		return NULL;

	if (FUNC3(page)
	    && (!FUNC4(page) || FUNC7(pfn)))
		return NULL;

	if (FUNC5(page))
		return NULL;

	return page;
}