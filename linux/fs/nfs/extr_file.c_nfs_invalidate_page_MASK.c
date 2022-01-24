#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*) ; 
 TYPE_2__* FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct page *page, unsigned int offset,
				unsigned int length)
{
	FUNC0(PAGECACHE, "NFS: invalidate_page(%p, %u, %u)\n",
		 page, offset, length);

	if (offset != 0 || length < PAGE_SIZE)
		return;
	/* Cancel any unstarted writes on this page */
	FUNC2(FUNC3(page)->host, page);

	FUNC1(page, page->mapping->host);
}