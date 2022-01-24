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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_info_freefrag_stats {int dummy; } ;
struct TYPE_8__ {unsigned int ffs_min; void* ffs_clusters; int ffs_free_chunks_real; int ffs_avg; void* ffs_free_clusters; } ;
struct ocfs2_info_freefrag {int iff_chunksize; TYPE_4__ iff_ffs; int /*<<< orphan*/  iff_req; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {struct ocfs2_chain_rec* cl_recs; int /*<<< orphan*/  cl_next_free_rec; int /*<<< orphan*/  cl_cpg; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ocfs2_super*,struct inode*,struct ocfs2_dinode*,struct ocfs2_chain_rec*,struct ocfs2_info_freefrag*,int) ; 
 int FUNC10 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct buffer_head**) ; 

__attribute__((used)) static int FUNC13(struct ocfs2_super *osb,
					   struct inode *gb_inode, u64 blkno,
					   struct ocfs2_info_freefrag *ffg)
{
	u32 chunks_in_group;
	int status = 0, unlock = 0, i;

	struct buffer_head *bh = NULL;
	struct ocfs2_chain_list *cl = NULL;
	struct ocfs2_chain_rec *rec = NULL;
	struct ocfs2_dinode *gb_dinode = NULL;

	if (gb_inode)
		FUNC1(gb_inode);

	if (FUNC8(&ffg->iff_req)) {
		status = FUNC10(gb_inode, &bh, 0);
		if (status < 0) {
			FUNC7(status);
			goto bail;
		}
		unlock = 1;
	} else {
		status = FUNC12(osb, blkno, 1, &bh);
		if (status < 0) {
			FUNC7(status);
			goto bail;
		}
	}

	gb_dinode = (struct ocfs2_dinode *)bh->b_data;
	cl = &(gb_dinode->id2.i_chain);

	/*
	 * Chunksize(in) clusters from userspace should be
	 * less than clusters in a group.
	 */
	if (ffg->iff_chunksize > FUNC4(cl->cl_cpg)) {
		status = -EINVAL;
		goto bail;
	}

	FUNC6(&ffg->iff_ffs, 0, sizeof(struct ocfs2_info_freefrag_stats));

	ffg->iff_ffs.ffs_min = ~0U;
	ffg->iff_ffs.ffs_clusters =
			FUNC5(gb_dinode->id1.bitmap1.i_total);
	ffg->iff_ffs.ffs_free_clusters = ffg->iff_ffs.ffs_clusters -
			FUNC5(gb_dinode->id1.bitmap1.i_used);

	chunks_in_group = FUNC4(cl->cl_cpg) / ffg->iff_chunksize + 1;

	for (i = 0; i < FUNC4(cl->cl_next_free_rec); i++) {
		rec = &(cl->cl_recs[i]);
		status = FUNC9(osb, gb_inode,
							gb_dinode,
							rec, ffg,
							chunks_in_group);
		if (status)
			goto bail;
	}

	if (ffg->iff_ffs.ffs_free_chunks_real)
		ffg->iff_ffs.ffs_avg = (ffg->iff_ffs.ffs_avg /
					ffg->iff_ffs.ffs_free_chunks_real);
bail:
	if (unlock)
		FUNC11(gb_inode, 0);

	if (gb_inode)
		FUNC2(gb_inode);

	FUNC3(gb_inode);
	FUNC0(bh);

	return status;
}