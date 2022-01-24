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
struct gfs2_trans {int /*<<< orphan*/  tr_databuf; int /*<<< orphan*/  tr_num_databuf_new; int /*<<< orphan*/  tr_flags; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; TYPE_1__ gl_name; } ;
struct gfs2_bufdata {int /*<<< orphan*/  bd_list; int /*<<< orphan*/  bd_bh; struct gfs2_glock* bd_gl; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 TYPE_2__* current ; 
 struct gfs2_bufdata* FUNC1 (struct gfs2_glock*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

void FUNC11(struct gfs2_glock *gl, struct buffer_head *bh)
{
	struct gfs2_trans *tr = current->journal_info;
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct gfs2_bufdata *bd;

	FUNC8(bh);
	if (FUNC0(bh)) {
		FUNC9(TR_TOUCHED, &tr->tr_flags);
		goto out;
	}
	FUNC3(sdp);
	bd = bh->b_private;
	if (bd == NULL) {
		FUNC4(sdp);
		FUNC10(bh);
		if (bh->b_private == NULL)
			bd = FUNC1(gl, bh);
		else
			bd = bh->b_private;
		FUNC8(bh);
		FUNC3(sdp);
	}
	FUNC2(sdp, bd->bd_gl == gl);
	FUNC9(TR_TOUCHED, &tr->tr_flags);
	if (FUNC7(&bd->bd_list)) {
		FUNC9(GLF_LFLUSH, &bd->bd_gl->gl_flags);
		FUNC9(GLF_DIRTY, &bd->bd_gl->gl_flags);
		FUNC5(sdp, bd->bd_bh);
		tr->tr_num_databuf_new++;
		FUNC6(&bd->bd_list, &tr->tr_databuf);
	}
	FUNC4(sdp);
out:
	FUNC10(bh);
}