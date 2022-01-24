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
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct pipe_inode_info *pipe,
			       struct pipe_buffer *buf)
{
	struct page *page = buf->page;

	if (FUNC2(page) == 1) {
		FUNC1(page, 0);
		FUNC0(page);
		return 0;
	}
	return 1;
}