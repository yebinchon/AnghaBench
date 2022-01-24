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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned int FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct page *page)
{
	unsigned int order, count, i;

	order = FUNC4(page);
	count = 1 << order;

	FUNC2(FUNC3(page), count);

	for (i = 0; i < count; i++)
		FUNC0(page + i);
	FUNC1(page, order);
}