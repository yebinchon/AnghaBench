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
 int FUNC2 (struct address_space*,struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 

int FUNC5(struct page *page)
{
	struct address_space *mapping = FUNC4(page);
	if (!mapping)
		return 0;
	if (FUNC0(page) || FUNC1(page))
		return 0;
	if (FUNC3(page))
		return 0;
	return FUNC2(mapping, page);
}