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
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 

int FUNC2(struct pipe_inode_info *pipe,
			   struct pipe_buffer *buf)
{
	struct page *page = buf->page;

	/*
	 * A reference of one is golden, that means that the owner of this
	 * page is the only one holding a reference to it. lock the page
	 * and return OK.
	 */
	if (FUNC1(page) == 1) {
		FUNC0(page);
		return 0;
	}

	return 1;
}