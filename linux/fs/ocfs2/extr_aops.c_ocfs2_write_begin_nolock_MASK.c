#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct ocfs2_write_ctxt {unsigned int w_clen; scalar_t__ w_target_locked; struct page* w_target_page; int /*<<< orphan*/  w_cpos; TYPE_3__* w_di_bh; int /*<<< orphan*/ * w_handle; TYPE_2__* w_desc; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; int /*<<< orphan*/  i_clusters; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/ * ac_resv; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  ocfs2_write_type_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  ip_la_data_resv; scalar_t__ ip_blkno; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;
struct TYPE_7__ {scalar_t__ c_needs_zero; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EAGAIN ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 int OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_WRITE_DIRECT ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (struct ocfs2_write_ctxt**,struct ocfs2_super*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,unsigned int,struct ocfs2_write_ctxt*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct ocfs2_write_ctxt*) ; 
 int FUNC19 (struct address_space*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct inode*,struct ocfs2_extent_tree*,unsigned int,unsigned int,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ; 
 int FUNC23 (struct inode*,struct ocfs2_write_ctxt*,unsigned int*,unsigned int*) ; 
 int FUNC24 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_super*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC26 (struct ocfs2_super*) ; 
 int /*<<< orphan*/ * FUNC27 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC28 (struct ocfs2_super*) ; 
 int FUNC29 (struct ocfs2_super*,unsigned int) ; 
 int FUNC30 (struct address_space*,struct inode*,int /*<<< orphan*/ ,unsigned int,struct page*,struct ocfs2_write_ctxt*) ; 
 int FUNC31 (struct address_space*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC32 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (unsigned long long,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 

int FUNC35(struct address_space *mapping,
			     loff_t pos, unsigned len, ocfs2_write_type_t type,
			     struct page **pagep, void **fsdata,
			     struct buffer_head *di_bh, struct page *mmap_page)
{
	int ret, cluster_of_pages, credits = OCFS2_INODE_UPDATE_CREDITS;
	unsigned int clusters_to_alloc, extents_to_split, clusters_need = 0;
	struct ocfs2_write_ctxt *wc;
	struct inode *inode = mapping->host;
	struct ocfs2_super *osb = FUNC4(inode->i_sb);
	struct ocfs2_dinode *di;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	handle_t *handle;
	struct ocfs2_extent_tree et;
	int try_free = 1, ret1;

try_again:
	ret = FUNC11(&wc, osb, pos, len, type, di_bh);
	if (ret) {
		FUNC10(ret);
		return ret;
	}

	if (FUNC28(osb)) {
		ret = FUNC30(mapping, inode, pos, len,
						     mmap_page, wc);
		if (ret == 1) {
			ret = 0;
			goto success;
		}
		if (ret < 0) {
			FUNC10(ret);
			goto out;
		}
	}

	/* Direct io change i_size late, should not zero tail here. */
	if (type != OCFS2_WRITE_DIRECT) {
		if (FUNC26(osb))
			ret = FUNC32(inode, di_bh, pos);
		else
			ret = FUNC16(inode, di_bh, pos,
							   len, wc);
		if (ret) {
			FUNC10(ret);
			goto out;
		}
	}

	ret = FUNC13(inode, pos, len);
	if (ret < 0) {
		FUNC10(ret);
		goto out;
	} else if (ret == 1) {
		clusters_need = wc->w_clen;
		ret = FUNC24(inode, di_bh,
					 wc->w_cpos, wc->w_clen, UINT_MAX);
		if (ret) {
			FUNC10(ret);
			goto out;
		}
	}

	ret = FUNC23(inode, wc, &clusters_to_alloc,
					&extents_to_split);
	if (ret) {
		FUNC10(ret);
		goto out;
	}
	clusters_need += clusters_to_alloc;

	di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;

	FUNC33(
			(unsigned long long)FUNC3(inode)->ip_blkno,
			(long long)FUNC8(inode),
			FUNC9(di->i_clusters),
			pos, len, type, mmap_page,
			clusters_to_alloc, extents_to_split);

	/*
	 * We set w_target_from, w_target_to here so that
	 * ocfs2_write_end() knows which range in the target page to
	 * write out. An allocation requires that we write the entire
	 * cluster range.
	 */
	if (clusters_to_alloc || extents_to_split) {
		/*
		 * XXX: We are stretching the limits of
		 * ocfs2_lock_allocators(). It greatly over-estimates
		 * the work to be done.
		 */
		FUNC20(&et, FUNC1(inode),
					      wc->w_di_bh);
		ret = FUNC22(inode, &et,
					    clusters_to_alloc, extents_to_split,
					    &data_ac, &meta_ac);
		if (ret) {
			FUNC10(ret);
			goto out;
		}

		if (data_ac)
			data_ac->ac_resv = &FUNC3(inode)->ip_la_data_resv;

		credits = FUNC12(inode->i_sb,
						    &di->id2.i_list);
	} else if (type == OCFS2_WRITE_DIRECT)
		/* direct write needs not to start trans if no extents alloc. */
		goto success;

	/*
	 * We have to zero sparse allocated clusters, unwritten extent clusters,
	 * and non-sparse clusters we just extended.  For non-sparse writes,
	 * we know zeros will only be needed in the first and/or last cluster.
	 */
	if (wc->w_clen && (wc->w_desc[0].c_needs_zero ||
			   wc->w_desc[wc->w_clen - 1].c_needs_zero))
		cluster_of_pages = 1;
	else
		cluster_of_pages = 0;

	FUNC25(osb, wc, pos, len, cluster_of_pages);

	handle = FUNC27(osb, credits);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC10(ret);
		goto out;
	}

	wc->w_handle = handle;

	if (clusters_to_alloc) {
		ret = FUNC6(inode,
			FUNC14(osb->sb, clusters_to_alloc));
		if (ret)
			goto out_commit;
	}

	ret = FUNC21(handle, FUNC1(inode), wc->w_di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC10(ret);
		goto out_quota;
	}

	/*
	 * Fill our page array first. That way we've grabbed enough so
	 * that we can zero and flush if we error after adding the
	 * extent.
	 */
	ret = FUNC19(mapping, wc, wc->w_cpos, pos, len,
					 cluster_of_pages, mmap_page);
	if (ret && ret != -EAGAIN) {
		FUNC10(ret);
		goto out_quota;
	}

	/*
	 * ocfs2_grab_pages_for_write() returns -EAGAIN if it could not lock
	 * the target page. In this case, we exit with no error and no target
	 * page. This will trigger the caller, page_mkwrite(), to re-try
	 * the operation.
	 */
	if (ret == -EAGAIN) {
		FUNC0(wc->w_target_page);
		ret = 0;
		goto out_quota;
	}

	ret = FUNC31(mapping, data_ac, meta_ac, wc, pos,
					  len);
	if (ret) {
		FUNC10(ret);
		goto out_quota;
	}

	if (data_ac)
		FUNC17(data_ac);
	if (meta_ac)
		FUNC17(meta_ac);

success:
	if (pagep)
		*pagep = wc->w_target_page;
	*fsdata = wc;
	return 0;
out_quota:
	if (clusters_to_alloc)
		FUNC7(inode,
			  FUNC14(osb->sb, clusters_to_alloc));
out_commit:
	FUNC15(osb, handle);

out:
	/*
	 * The mmapped page won't be unlocked in ocfs2_free_write_ctxt(),
	 * even in case of error here like ENOSPC and ENOMEM. So, we need
	 * to unlock the target page manually to prevent deadlocks when
	 * retrying again on ENOSPC, or when returning non-VM_FAULT_LOCKED
	 * to VM code.
	 */
	if (wc->w_target_locked)
		FUNC34(mmap_page);

	FUNC18(inode, wc);

	if (data_ac) {
		FUNC17(data_ac);
		data_ac = NULL;
	}
	if (meta_ac) {
		FUNC17(meta_ac);
		meta_ac = NULL;
	}

	if (ret == -ENOSPC && try_free) {
		/*
		 * Try to free some truncate log so that we can have enough
		 * clusters to allocate.
		 */
		try_free = 0;

		ret1 = FUNC29(osb, clusters_need);
		if (ret1 == 1)
			goto try_again;

		if (ret1 < 0)
			FUNC10(ret1);
	}

	return ret;
}