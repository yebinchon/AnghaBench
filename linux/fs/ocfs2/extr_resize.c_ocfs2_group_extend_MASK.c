#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ocfs2_super {int /*<<< orphan*/  s_feature_incompat; int /*<<< orphan*/  sb; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_blkno; int /*<<< orphan*/  bg_bits; } ;
struct TYPE_3__ {int /*<<< orphan*/  cl_cpg; int /*<<< orphan*/  cl_bpc; } ;
struct TYPE_4__ {TYPE_1__ i_chain; } ;
struct ocfs2_dinode {TYPE_2__ id2; int /*<<< orphan*/  i_clusters; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_GROUP_EXTEND_CREDITS ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_dinode*) ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 scalar_t__ FUNC19 (struct ocfs2_super*) ; 
 scalar_t__ FUNC20 (struct ocfs2_super*) ; 
 int FUNC21 (struct inode*,struct ocfs2_dinode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/ * FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct buffer_head*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (unsigned long long,int) ; 

int FUNC27(struct inode * inode, int new_clusters)
{
	int ret;
	handle_t *handle;
	struct buffer_head *main_bm_bh = NULL;
	struct buffer_head *group_bh = NULL;
	struct inode *main_bm_inode = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_group_desc *group = NULL;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	u16 cl_bpc;
	u32 first_new_cluster;
	u64 lgd_blkno;

	if (FUNC19(osb) || FUNC20(osb))
		return -EROFS;

	if (new_clusters < 0)
		return -EINVAL;
	else if (new_clusters == 0)
		return 0;

	main_bm_inode = FUNC15(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		ret = -EINVAL;
		FUNC13(ret);
		goto out;
	}

	FUNC6(main_bm_inode);

	ret = FUNC17(main_bm_inode, &main_bm_bh, 1);
	if (ret < 0) {
		FUNC13(ret);
		goto out_mutex;
	}

	fe = (struct ocfs2_dinode *)main_bm_bh->b_data;

	/* main_bm_bh is validated by inode read inside ocfs2_inode_lock(),
	 * so any corruption is a code bug. */
	FUNC0(!FUNC2(fe));

	if (FUNC9(fe->id2.i_chain.cl_cpg) !=
		FUNC16(osb->sb, 0,
					osb->s_feature_incompat) * 8) {
		FUNC12(ML_ERROR, "The disk is too old and small. "
		     "Force to do offline resize.");
		ret = -EINVAL;
		goto out_unlock;
	}

	first_new_cluster = FUNC10(fe->i_clusters);
	lgd_blkno = FUNC25(main_bm_inode,
					      first_new_cluster - 1);

	ret = FUNC21(main_bm_inode, fe, lgd_blkno,
					  &group_bh);
	if (ret < 0) {
		FUNC13(ret);
		goto out_unlock;
	}
	group = (struct ocfs2_group_desc *)group_bh->b_data;

	cl_bpc = FUNC9(fe->id2.i_chain.cl_bpc);
	if (FUNC9(group->bg_bits) / cl_bpc + new_clusters >
		FUNC9(fe->id2.i_chain.cl_cpg)) {
		ret = -EINVAL;
		goto out_unlock;
	}


	FUNC26(
	     (unsigned long long)FUNC11(group->bg_blkno), new_clusters);

	handle = FUNC22(osb, OCFS2_GROUP_EXTEND_CREDITS);
	if (FUNC1(handle)) {
		FUNC13(FUNC4(handle));
		ret = -EINVAL;
		goto out_unlock;
	}

	/* update the last group descriptor and inode. */
	ret = FUNC23(handle, main_bm_inode,
						main_bm_bh, group_bh,
						first_new_cluster,
						new_clusters);
	if (ret) {
		FUNC13(ret);
		goto out_commit;
	}

	FUNC24(main_bm_inode, new_clusters);

out_commit:
	FUNC14(osb, handle);
out_unlock:
	FUNC5(group_bh);
	FUNC5(main_bm_bh);

	FUNC18(main_bm_inode, 1);

out_mutex:
	FUNC7(main_bm_inode);
	FUNC8(main_bm_inode);

out:
	return ret;
}