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
struct address_space {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct page *page)
{
	struct address_space *mapping = FUNC4(page);
	unsigned long flags;

	FUNC0(!FUNC1(page));
	FUNC5(&mapping->i_pages, flags);
	FUNC2(page, NULL);
	FUNC6(&mapping->i_pages, flags);

	FUNC3(mapping, page);
}