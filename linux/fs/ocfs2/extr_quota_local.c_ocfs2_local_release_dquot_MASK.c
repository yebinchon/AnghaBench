#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_local_disk_chunk {int /*<<< orphan*/  dqc_free; int /*<<< orphan*/  dqc_bitmap; } ;
struct ocfs2_dquot {TYPE_2__* dq_chunk; int /*<<< orphan*/  dq_local_off; } ;
struct TYPE_8__ {int type; } ;
struct dquot {struct super_block* dq_sb; TYPE_1__ dq_id; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_11__ {int /*<<< orphan*/ * files; } ;
struct TYPE_10__ {scalar_t__ b_data; } ;
struct TYPE_9__ {TYPE_3__* qc_headerbh; int /*<<< orphan*/  qc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocfs2_dquot* FUNC1 (struct dquot*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int FUNC11(handle_t *handle, struct dquot *dquot)
{
	int status;
	int type = dquot->dq_id.type;
	struct ocfs2_dquot *od = FUNC1(dquot);
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_local_disk_chunk *dchunk;
	int offset;

	status = FUNC6(handle,
			FUNC0(FUNC9(sb)->files[type]),
			od->dq_chunk->qc_headerbh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC4(status);
		goto out;
	}
	offset = FUNC8(sb, od->dq_chunk->qc_num,
					     od->dq_local_off);
	dchunk = (struct ocfs2_local_disk_chunk *)
			(od->dq_chunk->qc_headerbh->b_data);
	/* Mark structure as freed */
	FUNC3(od->dq_chunk->qc_headerbh);
	FUNC5(offset, dchunk->dqc_bitmap);
	FUNC2(&dchunk->dqc_free, 1);
	FUNC10(od->dq_chunk->qc_headerbh);
	FUNC7(handle, od->dq_chunk->qc_headerbh);

out:
	return status;
}