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
struct gfs2_trans {int /*<<< orphan*/  tr_flags; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;
struct buffer_head {void* b_end_io; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int DIO_WAIT ; 
 int EIO ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 TYPE_2__* current ; 
 void* end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct gfs2_glock*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

int FUNC11(struct gfs2_glock *gl, u64 blkno, int flags,
		   int rahead, struct buffer_head **bhp)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct buffer_head *bh, *bhs[2];
	int num = 0;

	if (FUNC8(FUNC7(SDF_WITHDRAWN, &sdp->sd_flags))) {
		*bhp = NULL;
		return -EIO;
	}

	*bhp = bh = FUNC3(gl, blkno, CREATE);

	FUNC6(bh);
	if (FUNC1(bh)) {
		FUNC9(bh);
		flags &= ~DIO_WAIT;
	} else {
		bh->b_end_io = end_buffer_read_sync;
		FUNC2(bh);
		bhs[num++] = bh;
	}

	if (rahead) {
		bh = FUNC3(gl, blkno + 1, CREATE);

		FUNC6(bh);
		if (FUNC1(bh)) {
			FUNC9(bh);
			FUNC0(bh);
		} else {
			bh->b_end_io = end_buffer_read_sync;
			bhs[num++] = bh;
		}
	}

	FUNC5(REQ_OP_READ, REQ_META | REQ_PRIO, bhs, num);
	if (!(flags & DIO_WAIT))
		return 0;

	bh = *bhp;
	FUNC10(bh);
	if (FUNC8(!FUNC1(bh))) {
		struct gfs2_trans *tr = current->journal_info;
		if (tr && FUNC7(TR_TOUCHED, &tr->tr_flags))
			FUNC4(sdp, bh);
		FUNC0(bh);
		*bhp = NULL;
		return -EIO;
	}

	return 0;
}