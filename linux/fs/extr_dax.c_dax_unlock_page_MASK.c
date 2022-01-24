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
struct page {int /*<<< orphan*/  index; struct address_space* mapping; } ;
struct address_space {TYPE_1__* host; int /*<<< orphan*/  i_pages; } ;
typedef  scalar_t__ dax_entry_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  xas ; 

void FUNC3(struct page *page, dax_entry_t cookie)
{
	struct address_space *mapping = page->mapping;
	FUNC1(xas, &mapping->i_pages, page->index);

	if (FUNC0(mapping->host->i_mode))
		return;

	FUNC2(&xas, (void *)cookie);
}