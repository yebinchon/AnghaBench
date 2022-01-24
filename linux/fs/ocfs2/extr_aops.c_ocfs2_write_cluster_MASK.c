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
typedef  int u64 ;
typedef  int u32 ;
struct ocfs2_write_ctxt {int w_num_pages; int /*<<< orphan*/ ** w_pages; int /*<<< orphan*/  w_dealloc; int /*<<< orphan*/  w_handle; int /*<<< orphan*/  w_di_bh; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
struct TYPE_5__ {scalar_t__ ip_blkno; } ;
struct TYPE_4__ {int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct inode*,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (struct inode*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int,int,int,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,int*,struct ocfs2_write_ctxt*,int /*<<< orphan*/ *,int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct ocfs2_write_ctxt*,int,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct address_space *mapping,
			       u32 *phys, unsigned int new,
			       unsigned int clear_unwritten,
			       unsigned int should_zero,
			       struct ocfs2_alloc_context *data_ac,
			       struct ocfs2_alloc_context *meta_ac,
			       struct ocfs2_write_ctxt *wc, u32 cpos,
			       loff_t user_pos, unsigned user_len)
{
	int ret, i;
	u64 p_blkno;
	struct inode *inode = mapping->host;
	struct ocfs2_extent_tree et;
	int bpc = FUNC8(inode->i_sb, 1);

	if (new) {
		u32 tmp_pos;

		/*
		 * This is safe to call with the page locks - it won't take
		 * any additional semaphores or cluster locks.
		 */
		tmp_pos = cpos;
		ret = FUNC7(FUNC3(inode->i_sb), inode,
					   &tmp_pos, 1, !clear_unwritten,
					   wc->w_di_bh, wc->w_handle,
					   data_ac, meta_ac, NULL);
		/*
		 * This shouldn't happen because we must have already
		 * calculated the correct meta data allocation required. The
		 * internal tree allocation code should know how to increase
		 * transaction credits itself.
		 *
		 * If need be, we could handle -EAGAIN for a
		 * RESTART_TRANS here.
		 */
		FUNC5(ret == -EAGAIN,
				"Inode %llu: EAGAIN return during allocation.\n",
				(unsigned long long)FUNC2(inode)->ip_blkno);
		if (ret < 0) {
			FUNC6(ret);
			goto out;
		}
	} else if (clear_unwritten) {
		FUNC10(&et, FUNC1(inode),
					      wc->w_di_bh);
		ret = FUNC11(inode, &et,
						wc->w_handle, cpos, 1, *phys,
						meta_ac, &wc->w_dealloc);
		if (ret < 0) {
			FUNC6(ret);
			goto out;
		}
	}

	/*
	 * The only reason this should fail is due to an inability to
	 * find the extent added.
	 */
	ret = FUNC9(inode, cpos, phys, NULL, NULL);
	if (ret < 0) {
		FUNC4(ML_ERROR, "Get physical blkno failed for inode %llu, "
			    "at logical cluster %u",
			    (unsigned long long)FUNC2(inode)->ip_blkno, cpos);
		goto out;
	}

	FUNC0(*phys == 0);

	p_blkno = FUNC8(inode->i_sb, *phys);
	if (!should_zero)
		p_blkno += (user_pos >> inode->i_sb->s_blocksize_bits) & (u64)(bpc - 1);

	for(i = 0; i < wc->w_num_pages; i++) {
		int tmpret;

		/* This is the direct io target page. */
		if (wc->w_pages[i] == NULL) {
			p_blkno++;
			continue;
		}

		tmpret = FUNC12(inode, &p_blkno, wc,
						      wc->w_pages[i], cpos,
						      user_pos, user_len,
						      should_zero);
		if (tmpret) {
			FUNC6(tmpret);
			if (ret == 0)
				ret = tmpret;
		}
	}

	/*
	 * We only have cleanup to do in case of allocating write.
	 */
	if (ret && new)
		FUNC13(inode, wc, user_pos, user_len);

out:

	return ret;
}