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
struct ocfs2_truncate_log {int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {struct ocfs2_journal* journal; struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_journal; } ;
struct TYPE_3__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct inode* FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (struct ocfs2_super*,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long long,unsigned int) ; 

int FUNC19(struct ocfs2_super *osb)
{
	int status;
	unsigned int num_to_flush;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct inode *data_alloc_inode = NULL;
	struct buffer_head *tl_bh = osb->osb_tl_bh;
	struct buffer_head *data_alloc_bh = NULL;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;
	struct ocfs2_journal *journal = osb->journal;

	FUNC0(FUNC5(tl_inode));

	di = (struct ocfs2_dinode *) tl_bh->b_data;

	/* tl_bh is loaded from ocfs2_truncate_log_init().  It's validated
	 * by the underlying call to ocfs2_read_inode_block(), so any
	 * corruption is a code bug */
	FUNC0(!FUNC2(di));

	tl = &di->id2.i_dealloc;
	num_to_flush = FUNC11(tl->tl_used);
	FUNC18(
		(unsigned long long)FUNC1(tl_inode)->ip_blkno,
		num_to_flush);
	if (!num_to_flush) {
		status = 0;
		goto out;
	}

	/* Appending truncate log(TA) and and flushing truncate log(TF) are
	 * two separated transactions. They can be both committed but not
	 * checkpointed. If crash occurs then, both two transaction will be
	 * replayed with several already released to global bitmap clusters.
	 * Then truncate log will be replayed resulting in cluster double free.
	 */
	FUNC9(journal->j_journal);
	status = FUNC8(journal->j_journal);
	FUNC10(journal->j_journal);
	if (status < 0) {
		FUNC13(status);
		goto out;
	}

	data_alloc_inode = FUNC14(osb,
						       GLOBAL_BITMAP_SYSTEM_INODE,
						       OCFS2_INVALID_SLOT);
	if (!data_alloc_inode) {
		status = -EINVAL;
		FUNC12(ML_ERROR, "Could not get bitmap inode!\n");
		goto out;
	}

	FUNC4(data_alloc_inode);

	status = FUNC15(data_alloc_inode, &data_alloc_bh, 1);
	if (status < 0) {
		FUNC13(status);
		goto out_mutex;
	}

	status = FUNC17(osb, data_alloc_inode,
					       data_alloc_bh);
	if (status < 0)
		FUNC13(status);

	FUNC3(data_alloc_bh);
	FUNC16(data_alloc_inode, 1);

out_mutex:
	FUNC6(data_alloc_inode);
	FUNC7(data_alloc_inode);

out:
	return status;
}