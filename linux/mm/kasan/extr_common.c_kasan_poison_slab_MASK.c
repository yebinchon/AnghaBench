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
 int /*<<< orphan*/  KASAN_KMALLOC_REDZONE ; 
 unsigned long FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct page *page)
{
	unsigned long i;

	for (i = 0; i < FUNC0(page); i++)
		FUNC3(page + i);
	FUNC1(FUNC2(page), FUNC4(page),
			KASAN_KMALLOC_REDZONE);
}