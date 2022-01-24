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
typedef  int /*<<< orphan*/  u32 ;
struct page {struct address_space* mapping; } ;
struct ocfs2_write_ctxt {unsigned long w_num_pages; scalar_t__ w_type; int w_target_locked; struct page** w_pages; struct page* w_target_page; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ OCFS2_WRITE_DIRECT ; 
 scalar_t__ OCFS2_WRITE_MMAP ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 
 struct page* FUNC2 (struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 unsigned int FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct address_space *mapping,
				      struct ocfs2_write_ctxt *wc,
				      u32 cpos, loff_t user_pos,
				      unsigned user_len, int new,
				      struct page *mmap_page)
{
	int ret = 0, i;
	unsigned long start, target_index, end_index, index;
	struct inode *inode = mapping->host;
	loff_t last_byte;

	target_index = user_pos >> PAGE_SHIFT;

	/*
	 * Figure out how many pages we'll be manipulating here. For
	 * non allocating write, we just change the one
	 * page. Otherwise, we'll need a whole clusters worth.  If we're
	 * writing past i_size, we only need enough pages to cover the
	 * last page of the write.
	 */
	if (new) {
		wc->w_num_pages = FUNC9(inode->i_sb);
		start = FUNC8(inode->i_sb, cpos);
		/*
		 * We need the index *past* the last page we could possibly
		 * touch.  This is the page past the end of the write or
		 * i_size, whichever is greater.
		 */
		last_byte = FUNC6(user_pos + user_len, FUNC4(inode));
		FUNC0(last_byte < 1);
		end_index = ((last_byte - 1) >> PAGE_SHIFT) + 1;
		if ((start + wc->w_num_pages) > end_index)
			wc->w_num_pages = end_index - start;
	} else {
		wc->w_num_pages = 1;
		start = target_index;
	}
	end_index = (user_pos + user_len - 1) >> PAGE_SHIFT;

	for(i = 0; i < wc->w_num_pages; i++) {
		index = start + i;

		if (index >= target_index && index <= end_index &&
		    wc->w_type == OCFS2_WRITE_MMAP) {
			/*
			 * ocfs2_pagemkwrite() is a little different
			 * and wants us to directly use the page
			 * passed in.
			 */
			FUNC5(mmap_page);

			/* Exit and let the caller retry */
			if (mmap_page->mapping != mapping) {
				FUNC1(mmap_page->mapping);
				FUNC10(mmap_page);
				ret = -EAGAIN;
				goto out;
			}

			FUNC3(mmap_page);
			wc->w_pages[i] = mmap_page;
			wc->w_target_locked = true;
		} else if (index >= target_index && index <= end_index &&
			   wc->w_type == OCFS2_WRITE_DIRECT) {
			/* Direct write has no mapping page. */
			wc->w_pages[i] = NULL;
			continue;
		} else {
			wc->w_pages[i] = FUNC2(mapping, index,
							     GFP_NOFS);
			if (!wc->w_pages[i]) {
				ret = -ENOMEM;
				FUNC7(ret);
				goto out;
			}
		}
		FUNC11(wc->w_pages[i]);

		if (index == target_index)
			wc->w_target_page = wc->w_pages[i];
	}
out:
	if (ret)
		wc->w_target_locked = false;
	return ret;
}