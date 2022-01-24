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
struct squashfs_cache_entry {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (void*,struct squashfs_cache_entry*,int,int) ; 

void FUNC7(struct page *page, struct squashfs_cache_entry *buffer, int offset, int avail)
{
	int copied;
	void *pageaddr;

	pageaddr = FUNC3(page);
	copied = FUNC6(pageaddr, buffer, offset, avail);
	FUNC5(pageaddr + copied, 0, PAGE_SIZE - copied);
	FUNC4(pageaddr);

	FUNC2(page);
	if (copied == avail)
		FUNC1(page);
	else
		FUNC0(page);
}