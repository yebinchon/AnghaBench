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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  sb; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_chain; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {struct ocfs2_chain_rec* cl_recs; int /*<<< orphan*/  cl_cpg; int /*<<< orphan*/  cl_bpc; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_clusters; TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int /*<<< orphan*/  c_free; int /*<<< orphan*/  c_total; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_FEATURE_COMPAT_BACKUP_SB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct inode*,struct ocfs2_group_desc*,int,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(handle_t *handle,
					     struct inode *bm_inode,
					     struct buffer_head *bm_bh,
					     struct buffer_head *group_bh,
					     u32 first_new_cluster,
					     int new_clusters)
{
	int ret = 0;
	struct ocfs2_super *osb = FUNC3(bm_inode->i_sb);
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) bm_bh->b_data;
	struct ocfs2_chain_list *cl = &fe->id2.i_chain;
	struct ocfs2_chain_rec *cr;
	struct ocfs2_group_desc *group;
	u16 chain, num_bits, backups = 0;
	u16 cl_bpc = FUNC6(cl->cl_bpc);
	u16 cl_cpg = FUNC6(cl->cl_cpg);
	u16 old_bg_clusters;

	FUNC18(new_clusters,
						first_new_cluster);

	ret = FUNC14(handle, FUNC0(bm_inode),
				      group_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC11(ret);
		goto out;
	}

	group = (struct ocfs2_group_desc *)group_bh->b_data;

	old_bg_clusters = FUNC6(group->bg_bits) / cl_bpc;
	/* update the group first. */
	num_bits = new_clusters * cl_bpc;
	FUNC5(&group->bg_bits, num_bits);
	FUNC5(&group->bg_free_bits_count, num_bits);

	/*
	 * check whether there are some new backup superblocks exist in
	 * this group and update the group bitmap accordingly.
	 */
	if (FUNC1(osb->sb,
				     OCFS2_FEATURE_COMPAT_BACKUP_SB)) {
		backups = FUNC12(bm_inode,
						     group,
						     cl_cpg, old_bg_clusters, 1);
		FUNC5(&group->bg_free_bits_count, -1 * backups);
	}

	FUNC15(handle, group_bh);

	/* update the inode accordingly. */
	ret = FUNC13(handle, FUNC0(bm_inode), bm_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC11(ret);
		goto out_rollback;
	}

	chain = FUNC6(group->bg_chain);
	cr = (&cl->cl_recs[chain]);
	FUNC7(&cr->c_total, num_bits);
	FUNC7(&cr->c_free, num_bits);
	FUNC7(&fe->id1.bitmap1.i_total, num_bits);
	FUNC7(&fe->i_clusters, new_clusters);

	if (backups) {
		FUNC7(&cr->c_free, -1 * backups);
		FUNC7(&fe->id1.bitmap1.i_used, backups);
	}

	FUNC16(&FUNC2(bm_inode)->ip_lock);
	FUNC2(bm_inode)->ip_clusters = FUNC8(fe->i_clusters);
	FUNC9(&fe->i_size, (u64)new_clusters << osb->s_clustersize_bits);
	FUNC17(&FUNC2(bm_inode)->ip_lock);
	FUNC4(bm_inode, FUNC10(fe->i_size));

	FUNC15(handle, bm_bh);

out_rollback:
	if (ret < 0) {
		FUNC12(bm_inode,
					    group,
					    cl_cpg, old_bg_clusters, 0);
		FUNC5(&group->bg_free_bits_count, backups);
		FUNC5(&group->bg_bits, -1 * num_bits);
		FUNC5(&group->bg_free_bits_count, -1 * num_bits);
	}
out:
	if (ret)
		FUNC11(ret);
	return ret;
}