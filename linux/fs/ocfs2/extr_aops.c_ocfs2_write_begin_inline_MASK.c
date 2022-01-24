#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct ocfs2_write_ctxt {int w_num_pages; int /*<<< orphan*/ * w_handle; TYPE_1__* w_di_bh; struct page* w_target_page; struct page** w_pages; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int ip_dyn_features; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,struct page*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/ * FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct address_space *mapping,
				    struct inode *inode,
				    struct ocfs2_write_ctxt *wc)
{
	int ret;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct page *page;
	handle_t *handle;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;

	handle = FUNC12(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		FUNC7(ret);
		goto out;
	}

	page = FUNC6(mapping, 0, GFP_NOFS);
	if (!page) {
		FUNC8(osb, handle);
		ret = -ENOMEM;
		FUNC7(ret);
		goto out;
	}
	/*
	 * If we don't set w_num_pages then this page won't get unlocked
	 * and freed on cleanup of the write context.
	 */
	wc->w_pages[0] = wc->w_target_page = page;
	wc->w_num_pages = 1;

	ret = FUNC9(handle, FUNC0(inode), wc->w_di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC8(osb, handle);

		FUNC7(ret);
		goto out;
	}

	if (!(FUNC2(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL))
		FUNC11(inode, di);

	if (!FUNC5(page)) {
		ret = FUNC10(inode, page, wc->w_di_bh);
		if (ret) {
			FUNC8(osb, handle);

			goto out;
		}
	}

	wc->w_handle = handle;
out:
	return ret;
}