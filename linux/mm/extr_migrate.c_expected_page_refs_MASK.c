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
struct address_space {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct address_space *mapping, struct page *page)
{
	int expected_count = 1;

	/*
	 * Device public or private pages have an extra refcount as they are
	 * ZONE_DEVICE pages.
	 */
	expected_count += FUNC1(page);
	if (mapping)
		expected_count += FUNC0(page) + FUNC2(page);

	return expected_count;
}