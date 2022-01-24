#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  i_pages; TYPE_1__* a_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* freepage ) (struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct address_space *mapping, struct page *page)
{
	unsigned long flags;

	if (page->mapping != mapping)
		return 0;

	if (FUNC3(page) && !FUNC6(page, GFP_KERNEL))
		return 0;

	FUNC7(&mapping->i_pages, flags);
	if (FUNC1(page))
		goto failed;

	FUNC0(FUNC3(page));
	FUNC2(page, NULL);
	FUNC8(&mapping->i_pages, flags);

	if (mapping->a_ops->freepage)
		mapping->a_ops->freepage(page);

	FUNC4(page);	/* pagecache ref */
	return 1;
failed:
	FUNC8(&mapping->i_pages, flags);
	return 0;
}