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
struct page {TYPE_1__* mapping; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ *,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct page *page,
					    unsigned int offset,
					    unsigned int length)
{
	journal_t *journal = FUNC1(page->mapping->host);

	FUNC3(page, offset, length);

	/*
	 * If it's a full truncate we just forget about the pending dirtying
	 */
	if (offset == 0 && length == PAGE_SIZE)
		FUNC0(page);

	return FUNC2(journal, page, offset, length);
}