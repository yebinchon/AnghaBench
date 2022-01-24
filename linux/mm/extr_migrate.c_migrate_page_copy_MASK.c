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
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct page*) ; 

void FUNC5(struct page *newpage, struct page *page)
{
	if (FUNC0(page) || FUNC1(page))
		FUNC3(newpage, page);
	else
		FUNC2(newpage, page);

	FUNC4(newpage, page);
}