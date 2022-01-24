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
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNODE_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct hfs_bnode *node, int dst, int src, int len)
{
	struct page *page;
	void *ptr;

	FUNC0(BNODE_MOD, "movebytes: %u,%u,%u\n", dst, src, len);
	if (!len)
		return;
	src += node->page_offset;
	dst += node->page_offset;
	page = node->page[0];
	ptr = FUNC1(page);
	FUNC3(ptr + dst, ptr + src, len);
	FUNC2(page);
	FUNC4(page);
}