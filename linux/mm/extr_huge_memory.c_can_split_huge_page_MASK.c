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
 int HPAGE_PMD_NR ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 

bool FUNC4(struct page *page, int *pextra_pins)
{
	int extra_pins;

	/* Additional pins from page cache */
	if (FUNC0(page))
		extra_pins = FUNC1(page) ? HPAGE_PMD_NR : 0;
	else
		extra_pins = HPAGE_PMD_NR;
	if (pextra_pins)
		*pextra_pins = extra_pins;
	return FUNC3(page) == FUNC2(page) - extra_pins - 1;
}