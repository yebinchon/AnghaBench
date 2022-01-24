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
struct pipe_inode_info {struct page* tmp_page; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static void FUNC2(struct pipe_inode_info *pipe,
				  struct pipe_buffer *buf)
{
	struct page *page = buf->page;

	/*
	 * If nobody else uses this page, and we don't already have a
	 * temporary page, let's keep track of it as a one-deep
	 * allocation cache. (Otherwise just release our reference to it)
	 */
	if (FUNC0(page) == 1 && !pipe->tmp_page)
		pipe->tmp_page = page;
	else
		FUNC1(page);
}