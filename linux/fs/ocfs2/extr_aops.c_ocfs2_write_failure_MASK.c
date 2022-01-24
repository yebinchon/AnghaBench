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
struct ocfs2_write_ctxt {int w_num_pages; int /*<<< orphan*/  w_handle; struct page** w_pages; scalar_t__ w_target_page; } ;
struct inode {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inode*,int,unsigned int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct inode *inode,
				struct ocfs2_write_ctxt *wc,
				loff_t user_pos, unsigned user_len)
{
	int i;
	unsigned from = user_pos & (PAGE_SIZE - 1),
		to = user_pos + user_len;
	struct page *tmppage;

	if (wc->w_target_page)
		FUNC3(wc->w_target_page, from, to);

	for(i = 0; i < wc->w_num_pages; i++) {
		tmppage = wc->w_pages[i];

		if (tmppage && FUNC4(tmppage)) {
			if (FUNC2(inode))
				FUNC1(wc->w_handle, inode,
							   user_pos, user_len);

			FUNC0(tmppage, from, to);
		}
	}
}