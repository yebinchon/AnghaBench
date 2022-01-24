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
 unsigned int MAX_PAGES ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct page **pages, const unsigned *array, unsigned num)
{
	unsigned int i;

	FUNC0(num < MAX_PAGES);
	for (i = 0; i < num; i++)
		pages[i] = (struct page *)(unsigned long)
			   ((1 + array[i]) * PAGE_SIZE);
}