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
struct gfs2_trans {scalar_t__ tr_num_buf_new; scalar_t__ tr_num_databuf_new; scalar_t__ tr_num_buf_rm; scalar_t__ tr_num_databuf_rm; scalar_t__ tr_blocks; scalar_t__ tr_num_revoke; scalar_t__ tr_revokes; int /*<<< orphan*/  tr_flags; int /*<<< orphan*/  tr_reserved; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; int /*<<< orphan*/  sd_log_flush_lock; } ;
typedef  scalar_t__ s64 ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;
struct TYPE_3__ {int s_flags; } ;

/* Variables and functions */
 int GFS2_LFC_TRANS_END ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int SB_SYNCHRONOUS ; 
 int /*<<< orphan*/  TR_ALLOCED ; 
 int /*<<< orphan*/  TR_ATTACHED ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC0 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,struct gfs2_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct gfs2_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_trans*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct gfs2_sbd *sdp)
{
	struct gfs2_trans *tr = current->journal_info;
	s64 nbuf;
	int alloced = FUNC7(TR_ALLOCED, &tr->tr_flags);

	current->journal_info = NULL;

	if (!FUNC7(TR_TOUCHED, &tr->tr_flags)) {
		FUNC3(sdp, tr->tr_reserved);
		if (alloced) {
			FUNC5(tr);
			FUNC6(sdp->sd_vfs);
		}
		return;
	}

	nbuf = tr->tr_num_buf_new + tr->tr_num_databuf_new;
	nbuf -= tr->tr_num_buf_rm;
	nbuf -= tr->tr_num_databuf_rm;

	if (FUNC0(sdp, (nbuf <= tr->tr_blocks) &&
				       (tr->tr_num_revoke <= tr->tr_revokes)))
		FUNC4(sdp, tr);

	FUNC1(sdp, tr);
	if (alloced && !FUNC7(TR_ATTACHED, &tr->tr_flags))
		FUNC5(tr);
	FUNC8(&sdp->sd_log_flush_lock);

	if (sdp->sd_vfs->s_flags & SB_SYNCHRONOUS)
		FUNC2(sdp, NULL, GFS2_LOG_HEAD_FLUSH_NORMAL |
			       GFS2_LFC_TRANS_END);
	if (alloced)
		FUNC6(sdp->sd_vfs);
}