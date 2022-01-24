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
struct address_space {TYPE_1__* a_ops; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int (* releasepage ) (struct page*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*) ; 

int FUNC5(struct page *page, gfp_t gfp_mask)
{
	struct address_space * const mapping = page->mapping;

	FUNC0(!FUNC1(page));
	if (FUNC2(page))
		return 0;

	if (mapping && mapping->a_ops->releasepage)
		return mapping->a_ops->releasepage(page, gfp_mask);
	return FUNC4(page);
}