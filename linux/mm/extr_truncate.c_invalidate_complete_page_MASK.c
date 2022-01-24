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
struct page {struct address_space* mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct address_space *mapping, struct page *page)
{
	int ret;

	if (page->mapping != mapping)
		return 0;

	if (FUNC0(page) && !FUNC2(page, 0))
		return 0;

	ret = FUNC1(mapping, page);

	return ret;
}