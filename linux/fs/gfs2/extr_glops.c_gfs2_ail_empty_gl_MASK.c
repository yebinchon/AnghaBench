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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  tr ;
struct gfs2_trans {int /*<<< orphan*/  tr_revokes; scalar_t__ tr_reserved; int /*<<< orphan*/  tr_ip; int /*<<< orphan*/  tr_databuf; int /*<<< orphan*/  tr_buf; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_ail_count; TYPE_1__ gl_name; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int GFS2_LFC_AIL_EMPTY_GL ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_trans*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct gfs2_sbd*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct gfs2_trans tr;

	FUNC8(&tr, 0, sizeof(tr));
	FUNC0(&tr.tr_buf);
	FUNC0(&tr.tr_databuf);
	tr.tr_revokes = FUNC3(&gl->gl_ail_count);

	if (!tr.tr_revokes)
		return;

	/* A shortened, inline version of gfs2_trans_begin()
         * tr->alloced is not set since the transaction structure is
         * on the stack */
	tr.tr_reserved = 1 + FUNC6(sdp, tr.tr_revokes, sizeof(u64));
	tr.tr_ip = _RET_IP_;
	if (FUNC5(sdp, tr.tr_reserved) < 0)
		return;
	FUNC1(current->journal_info);
	current->journal_info = &tr;

	FUNC2(gl, 0, tr.tr_revokes);

	FUNC7(sdp);
	FUNC4(sdp, NULL, GFS2_LOG_HEAD_FLUSH_NORMAL |
		       GFS2_LFC_AIL_EMPTY_GL);
}