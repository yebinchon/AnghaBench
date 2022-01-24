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
typedef  scalar_t__ u64 ;
struct ocfs2_truncate_rec {int /*<<< orphan*/  t_start; int /*<<< orphan*/  t_clusters; } ;
struct ocfs2_truncate_log {struct ocfs2_truncate_rec* tl_recs; int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {scalar_t__ truncated_clusters; struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct TYPE_3__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long long,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct ocfs2_super *osb,
					 struct inode *data_alloc_inode,
					 struct buffer_head *data_alloc_bh)
{
	int status = 0;
	int i;
	unsigned int num_clusters;
	u64 start_blk;
	struct ocfs2_truncate_rec rec;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct buffer_head *tl_bh = osb->osb_tl_bh;
	handle_t *handle;

	di = (struct ocfs2_dinode *) tl_bh->b_data;
	tl = &di->id2.i_dealloc;
	i = FUNC5(tl->tl_used) - 1;
	while (i >= 0) {
		handle = FUNC13(osb, OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC);
		if (FUNC1(handle)) {
			status = FUNC3(handle);
			FUNC7(status);
			goto bail;
		}

		/* Caller has given us at least enough credits to
		 * update the truncate log dinode */
		status = FUNC11(handle, FUNC0(tl_inode), tl_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC7(status);
			goto bail;
		}

		tl->tl_used = FUNC4(i);

		FUNC12(handle, tl_bh);

		rec = tl->tl_recs[i];
		start_blk = FUNC8(data_alloc_inode->i_sb,
						    FUNC6(rec.t_start));
		num_clusters = FUNC6(rec.t_clusters);

		/* if start_blk is not set, we ignore the record as
		 * invalid. */
		if (start_blk) {
			FUNC14(
				(unsigned long long)FUNC2(tl_inode)->ip_blkno,
				i, FUNC6(rec.t_start), num_clusters);

			status = FUNC10(handle, data_alloc_inode,
						     data_alloc_bh, start_blk,
						     num_clusters);
			if (status < 0) {
				FUNC7(status);
				goto bail;
			}
		}

		FUNC9(osb, handle);
		i--;
	}

	osb->truncated_clusters = 0;

bail:
	return status;
}