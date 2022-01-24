#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_truncate_log {TYPE_2__* tl_recs; int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct TYPE_4__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_blkno; TYPE_1__ id2; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {int /*<<< orphan*/  t_start; int /*<<< orphan*/  t_clusters; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_UPDATE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC15 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long,unsigned int) ; 

int FUNC17(struct ocfs2_super *osb,
					 struct ocfs2_dinode *tl_copy)
{
	int status = 0;
	int i;
	unsigned int clusters, num_recs, start_cluster;
	u64 start_blk;
	handle_t *handle;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct ocfs2_truncate_log *tl;

	if (FUNC1(tl_inode)->ip_blkno == FUNC8(tl_copy->i_blkno)) {
		FUNC9(ML_ERROR, "Asked to recover my own truncate log!\n");
		return -EINVAL;
	}

	tl = &tl_copy->id2.i_dealloc;
	num_recs = FUNC6(tl->tl_used);
	FUNC16(
		(unsigned long long)FUNC8(tl_copy->i_blkno),
		num_recs);

	FUNC4(tl_inode);
	for(i = 0; i < num_recs; i++) {
		if (FUNC15(osb)) {
			status = FUNC3(osb);
			if (status < 0) {
				FUNC10(status);
				goto bail_up;
			}
		}

		handle = FUNC13(osb, OCFS2_TRUNCATE_LOG_UPDATE);
		if (FUNC0(handle)) {
			status = FUNC2(handle);
			FUNC10(status);
			goto bail_up;
		}

		clusters = FUNC7(tl->tl_recs[i].t_clusters);
		start_cluster = FUNC7(tl->tl_recs[i].t_start);
		start_blk = FUNC11(osb->sb, start_cluster);

		status = FUNC14(osb, handle,
						   start_blk, clusters);
		FUNC12(osb, handle);
		if (status < 0) {
			FUNC10(status);
			goto bail_up;
		}
	}

bail_up:
	FUNC5(tl_inode);

	return status;
}