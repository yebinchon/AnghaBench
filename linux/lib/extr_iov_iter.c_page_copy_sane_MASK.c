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
 int PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int) ; 
 size_t FUNC3 (struct page*) ; 

__attribute__((used)) static inline bool FUNC4(struct page *page, size_t offset, size_t n)
{
	struct page *head;
	size_t v = n + offset;

	/*
	 * The general case needs to access the page order in order
	 * to compute the page size.
	 * However, we mostly deal with order-0 pages and thus can
	 * avoid a possible cache line miss for requests that fit all
	 * page orders.
	 */
	if (n <= v && v <= PAGE_SIZE)
		return true;

	head = FUNC1(page);
	v += (page - head) << PAGE_SHIFT;

	if (FUNC2(n <= v && v <= (FUNC3(head))))
		return true;
	FUNC0(1);
	return false;
}