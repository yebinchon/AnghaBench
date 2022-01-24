#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {scalar_t__ index; } ;
struct ocfs2_write_ctxt {int w_num_pages; unsigned int w_target_from; unsigned int w_target_to; scalar_t__ w_type; TYPE_1__* w_di_bh; int /*<<< orphan*/  w_dealloc; struct page* w_target_page; struct page** w_pages; int /*<<< orphan*/  w_unwritten_list; int /*<<< orphan*/ * w_handle; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_mtime_nsec; void* i_ctime; void* i_mtime; void* i_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_3__ i_mtime; TYPE_3__ i_ctime; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_8__ {int ip_dyn_features; } ;
struct TYPE_6__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ OCFS2_WRITE_DIRECT ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int,unsigned int,unsigned int*,struct ocfs2_dinode*,struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC28 (struct page*) ; 
 scalar_t__ FUNC29 (int) ; 

int FUNC30(struct address_space *mapping,
			   loff_t pos, unsigned len, unsigned copied, void *fsdata)
{
	int i, ret;
	unsigned from, to, start = pos & (PAGE_SIZE - 1);
	struct inode *inode = mapping->host;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_write_ctxt *wc = fsdata;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;
	handle_t *handle = wc->w_handle;
	struct page *tmppage;

	FUNC0(!FUNC14(&wc->w_unwritten_list));

	if (handle) {
		ret = FUNC20(handle, FUNC1(inode),
				wc->w_di_bh, OCFS2_JOURNAL_ACCESS_WRITE);
		if (ret) {
			copied = ret;
			FUNC16(ret);
			goto out;
		}
	}

	if (FUNC2(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		FUNC26(inode, pos, len, &copied, di, wc);
		goto out_write_size;
	}

	if (FUNC29(copied < len) && wc->w_target_page) {
		if (!FUNC4(wc->w_target_page))
			copied = 0;

		FUNC27(wc->w_target_page, start+copied,
				       start+len);
	}
	if (wc->w_target_page)
		FUNC10(wc->w_target_page);

	for(i = 0; i < wc->w_num_pages; i++) {
		tmppage = wc->w_pages[i];

		/* This is the direct io target page. */
		if (tmppage == NULL)
			continue;

		if (tmppage == wc->w_target_page) {
			from = wc->w_target_from;
			to = wc->w_target_to;

			FUNC0(from > PAGE_SIZE ||
			       to > PAGE_SIZE ||
			       to < from);
		} else {
			/*
			 * Pages adjacent to the target (if any) imply
			 * a hole-filling write in which case we want
			 * to flush their entire range.
			 */
			from = 0;
			to = PAGE_SIZE;
		}

		if (FUNC28(tmppage)) {
			if (handle && FUNC23(inode)) {
				loff_t start_byte =
					((loff_t)tmppage->index << PAGE_SHIFT) +
					from;
				loff_t length = to - from;
				FUNC19(handle, inode,
							   start_byte, length);
			}
			FUNC5(tmppage, from, to);
		}
	}

out_write_size:
	/* Direct io do not update i_size here. */
	if (wc->w_type != OCFS2_WRITE_DIRECT) {
		pos += copied;
		if (pos > FUNC11(inode)) {
			FUNC12(inode, pos);
			FUNC15(inode);
		}
		inode->i_blocks = FUNC18(inode);
		di->i_size = FUNC8((u64)FUNC11(inode));
		inode->i_mtime = inode->i_ctime = FUNC9(inode);
		di->i_mtime = di->i_ctime = FUNC8(inode->i_mtime.tv_sec);
		di->i_mtime_nsec = di->i_ctime_nsec = FUNC7(inode->i_mtime.tv_nsec);
		if (handle)
			FUNC25(handle, inode, 1);
	}
	if (handle)
		FUNC21(handle, wc->w_di_bh);

out:
	/* unlock pages before dealloc since it needs acquiring j_trans_barrier
	 * lock, or it will cause a deadlock since journal commit threads holds
	 * this lock and will ask for the page lock when flushing the data.
	 * put it here to preserve the unlock order.
	 */
	FUNC24(wc);

	if (handle)
		FUNC17(osb, handle);

	FUNC22(osb, &wc->w_dealloc);

	FUNC6(wc->w_di_bh);
	FUNC13(wc);

	return copied;
}