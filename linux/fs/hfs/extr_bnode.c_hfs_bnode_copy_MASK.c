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
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct hfs_bnode *dst_node, int dst,
		struct hfs_bnode *src_node, int src, int len)
{
	struct page *src_page, *dst_page;

	FUNC0(BNODE_MOD, "copybytes: %u,%u,%u\n", dst, src, len);
	if (!len)
		return;
	src += src_node->page_offset;
	dst += dst_node->page_offset;
	src_page = src_node->page[0];
	dst_page = dst_node->page[0];

	FUNC3(FUNC1(dst_page) + dst, FUNC1(src_page) + src, len);
	FUNC2(src_page);
	FUNC2(dst_page);
	FUNC4(dst_page);
}