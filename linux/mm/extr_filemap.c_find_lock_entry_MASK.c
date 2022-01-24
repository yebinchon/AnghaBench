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
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct page*) ; 
 struct page* FUNC1 (struct address_space*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct address_space* FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

struct page *FUNC9(struct address_space *mapping, pgoff_t offset)
{
	struct page *page;

repeat:
	page = FUNC1(mapping, offset);
	if (page && !FUNC8(page)) {
		FUNC2(page);
		/* Has the page been truncated? */
		if (FUNC6(FUNC3(page) != mapping)) {
			FUNC7(page);
			FUNC5(page);
			goto repeat;
		}
		FUNC0(FUNC4(page) != offset, page);
	}
	return page;
}