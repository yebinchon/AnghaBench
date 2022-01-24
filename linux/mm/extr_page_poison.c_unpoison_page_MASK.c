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
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct page *page)
{
	void *addr;

	addr = FUNC1(page);
	/*
	 * Page poisoning when enabled poisons each and every page
	 * that is freed to buddy. Thus no extra check is done to
	 * see if a page was poisoned.
	 */
	FUNC0(addr, PAGE_SIZE);
	FUNC2(addr);
}