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
struct page {int /*<<< orphan*/  index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 void* FUNC6 (struct inode*,struct page*) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct page *page, struct page *ipage)
{
	struct inode *inode = page->mapping->host;
	void *src_addr, *dst_addr;

	if (FUNC2(page))
		return;

	FUNC4(FUNC0(page), page->index);

	FUNC10(page, FUNC1(inode), PAGE_SIZE);

	/* Copy the whole inline data block */
	src_addr = FUNC6(inode, ipage);
	dst_addr = FUNC7(page);
	FUNC9(dst_addr, src_addr, FUNC1(inode));
	FUNC5(page);
	FUNC8(dst_addr);
	if (!FUNC2(page))
		FUNC3(page);
}