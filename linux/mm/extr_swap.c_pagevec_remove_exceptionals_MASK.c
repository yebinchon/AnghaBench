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

/* Variables and functions */
 int FUNC0 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

void FUNC2(struct pagevec *pvec)
{
	int i, j;

	for (i = 0, j = 0; i < FUNC0(pvec); i++) {
		struct page *page = pvec->pages[i];
		if (!FUNC1(page))
			pvec->pages[j++] = page;
	}
	pvec->nr = j;
}