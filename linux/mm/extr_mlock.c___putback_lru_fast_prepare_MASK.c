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
struct pagevec {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static bool FUNC8(struct page *page, struct pagevec *pvec,
		int *pgrescued)
{
	FUNC3(FUNC0(page), page);
	FUNC3(!FUNC1(page), page);

	if (FUNC5(page) <= 1 && FUNC4(page)) {
		FUNC6(pvec, page);
		if (FUNC2(page))
			(*pgrescued)++;
		FUNC7(page);
		return true;
	}

	return false;
}