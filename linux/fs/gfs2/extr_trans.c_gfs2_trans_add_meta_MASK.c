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
struct gfs2_trans {int /*<<< orphan*/  tr_num_buf_new; int /*<<< orphan*/  tr_buf; int /*<<< orphan*/  tr_flags; } ;
struct gfs2_sbd {TYPE_2__* sd_jdesc; int /*<<< orphan*/  sd_freeze_state; } ;
struct gfs2_meta_header {int /*<<< orphan*/  mh_jid; int /*<<< orphan*/  __pad0; int /*<<< orphan*/  mh_magic; } ;
struct TYPE_5__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; TYPE_1__ gl_name; } ;
struct gfs2_bufdata {int /*<<< orphan*/  bd_list; TYPE_3__* bd_bh; struct gfs2_glock* bd_gl; } ;
struct buffer_head {int /*<<< orphan*/  b_page; struct gfs2_bufdata* b_private; } ;
typedef  enum gfs2_freeze_state { ____Placeholder_gfs2_freeze_state } gfs2_freeze_state ;
struct TYPE_8__ {struct gfs2_trans* journal_info; } ;
struct TYPE_7__ {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  jd_jid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 int SFS_FROZEN ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,char*) ; 
 struct gfs2_bufdata* FUNC7 (struct gfs2_glock*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

void FUNC21(struct gfs2_glock *gl, struct buffer_head *bh)
{

	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct gfs2_bufdata *bd;
	struct gfs2_meta_header *mh;
	struct gfs2_trans *tr = current->journal_info;
	enum gfs2_freeze_state state = FUNC1(&sdp->sd_freeze_state);

	FUNC15(bh);
	if (FUNC2(bh)) {
		FUNC17(TR_TOUCHED, &tr->tr_flags);
		goto out;
	}
	FUNC10(sdp);
	bd = bh->b_private;
	if (bd == NULL) {
		FUNC11(sdp);
		FUNC19(bh);
		FUNC16(bh->b_page);
		if (bh->b_private == NULL)
			bd = FUNC7(gl, bh);
		else
			bd = bh->b_private;
		FUNC20(bh->b_page);
		FUNC15(bh);
		FUNC10(sdp);
	}
	FUNC8(sdp, bd->bd_gl == gl);
	FUNC17(TR_TOUCHED, &tr->tr_flags);
	if (!FUNC14(&bd->bd_list))
		goto out_unlock;
	FUNC17(GLF_LFLUSH, &bd->bd_gl->gl_flags);
	FUNC17(GLF_DIRTY, &bd->bd_gl->gl_flags);
	mh = (struct gfs2_meta_header *)bd->bd_bh->b_data;
	if (FUNC18(mh->mh_magic != FUNC3(GFS2_MAGIC))) {
		FUNC5(sdp, "Attempting to add uninitialised block to "
		       "journal (inplace block=%lld)\n",
		       (unsigned long long)bd->bd_bh->b_blocknr);
		FUNC0();
	}
	if (FUNC18(state == SFS_FROZEN)) {
		FUNC6(sdp, "GFS2:adding buf while frozen\n");
		FUNC9(sdp, 0);
	}
	FUNC12(sdp, bd->bd_bh);
	mh->__pad0 = FUNC4(0);
	mh->mh_jid = FUNC3(sdp->sd_jdesc->jd_jid);
	FUNC13(&bd->bd_list, &tr->tr_buf);
	tr->tr_num_buf_new++;
out_unlock:
	FUNC11(sdp);
out:
	FUNC19(bh);
}