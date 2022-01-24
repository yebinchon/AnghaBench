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
 int /*<<< orphan*/  HPAGE_PMD_ORDER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static inline struct page *FUNC3(void)
{
	struct page *page;

	page = FUNC1(FUNC0(),
			   HPAGE_PMD_ORDER);
	if (page)
		FUNC2(page);
	return page;
}