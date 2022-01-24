#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u16 ;
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  s_feature_incompat; int /*<<< orphan*/  sb; } ;
struct ocfs2_new_group_input {int group; size_t chain; int clusters; int frees; } ;
struct ocfs2_group_desc {void* bg_next_group; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_next_free_rec; struct ocfs2_chain_rec* cl_recs; int /*<<< orphan*/  cl_bpc; int /*<<< orphan*/  cl_cpg; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {void* i_size; int /*<<< orphan*/  i_clusters; TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int /*<<< orphan*/  c_free; int /*<<< orphan*/  c_total; void* c_blkno; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_GROUP_ADD_CREDITS ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void**,int) ; 
 int FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_chain_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int) ; 
 scalar_t__ FUNC25 (struct ocfs2_super*) ; 
 scalar_t__ FUNC26 (struct ocfs2_super*) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC30 (struct ocfs2_super*,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC32 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*,int) ; 
 int FUNC34 (struct inode*,struct ocfs2_dinode*,struct ocfs2_new_group_input*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (unsigned long long,size_t,int,int) ; 

int FUNC38(struct inode *inode, struct ocfs2_new_group_input *input)
{
	int ret;
	handle_t *handle;
	struct buffer_head *main_bm_bh = NULL;
	struct inode *main_bm_inode = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct buffer_head *group_bh = NULL;
	struct ocfs2_group_desc *group = NULL;
	struct ocfs2_chain_list *cl;
	struct ocfs2_chain_rec *cr;
	u16 cl_bpc;
	u64 bg_ptr;

	if (FUNC25(osb) || FUNC26(osb))
		return -EROFS;

	main_bm_inode = FUNC21(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		ret = -EINVAL;
		FUNC19(ret);
		goto out;
	}

	FUNC8(main_bm_inode);

	ret = FUNC23(main_bm_inode, &main_bm_bh, 1);
	if (ret < 0) {
		FUNC19(ret);
		goto out_mutex;
	}

	fe = (struct ocfs2_dinode *)main_bm_bh->b_data;

	if (FUNC12(fe->id2.i_chain.cl_cpg) !=
		FUNC22(osb->sb, 0,
					osb->s_feature_incompat) * 8) {
		FUNC18(ML_ERROR, "The disk is too old and small."
		     " Force to do offline resize.");
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC30(osb, input->group, 1, &group_bh);
	if (ret < 0) {
		FUNC18(ML_ERROR, "Can't read the group descriptor # %llu "
		     "from the device.", (unsigned long long)input->group);
		goto out_unlock;
	}

	FUNC31(FUNC0(inode), group_bh);

	ret = FUNC34(main_bm_inode, fe, input, group_bh);
	if (ret) {
		FUNC19(ret);
		goto out_free_group_bh;
	}

	FUNC37((unsigned long long)input->group,
			       input->chain, input->clusters, input->frees);

	handle = FUNC32(osb, OCFS2_GROUP_ADD_CREDITS);
	if (FUNC1(handle)) {
		FUNC19(FUNC4(handle));
		ret = -EINVAL;
		goto out_free_group_bh;
	}

	cl_bpc = FUNC12(fe->id2.i_chain.cl_bpc);
	cl = &fe->id2.i_chain;
	cr = &cl->cl_recs[input->chain];

	ret = FUNC28(handle, FUNC0(main_bm_inode),
				      group_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC19(ret);
		goto out_commit;
	}

	group = (struct ocfs2_group_desc *)group_bh->b_data;
	bg_ptr = FUNC16(group->bg_next_group);
	group->bg_next_group = cr->c_blkno;
	FUNC29(handle, group_bh);

	ret = FUNC27(handle, FUNC0(main_bm_inode),
				      main_bm_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		group->bg_next_group = FUNC6(bg_ptr);
		FUNC19(ret);
		goto out_commit;
	}

	if (input->chain == FUNC12(cl->cl_next_free_rec)) {
		FUNC11(&cl->cl_next_free_rec, 1);
		FUNC17(cr, 0, sizeof(struct ocfs2_chain_rec));
	}

	cr->c_blkno = FUNC6(input->group);
	FUNC13(&cr->c_total, input->clusters * cl_bpc);
	FUNC13(&cr->c_free, input->frees * cl_bpc);

	FUNC13(&fe->id1.bitmap1.i_total, input->clusters *cl_bpc);
	FUNC13(&fe->id1.bitmap1.i_used,
		     (input->clusters - input->frees) * cl_bpc);
	FUNC13(&fe->i_clusters, input->clusters);

	FUNC29(handle, main_bm_bh);

	FUNC35(&FUNC2(main_bm_inode)->ip_lock);
	FUNC2(main_bm_inode)->ip_clusters = FUNC14(fe->i_clusters);
	FUNC15(&fe->i_size, (u64)input->clusters << osb->s_clustersize_bits);
	FUNC36(&FUNC2(main_bm_inode)->ip_lock);
	FUNC7(main_bm_inode, FUNC16(fe->i_size));

	FUNC33(main_bm_inode, input->clusters);

out_commit:
	FUNC20(osb, handle);

out_free_group_bh:
	FUNC5(group_bh);

out_unlock:
	FUNC5(main_bm_bh);

	FUNC24(main_bm_inode, 1);

out_mutex:
	FUNC9(main_bm_inode);
	FUNC10(main_bm_inode);

out:
	return ret;
}