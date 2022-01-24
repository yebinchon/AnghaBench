#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gfs2_trans {int /*<<< orphan*/  tr_ail1_list; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_log_pinned; int /*<<< orphan*/  sd_ail_lock; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_ail_count; int /*<<< orphan*/  gl_ail_list; } ;
struct gfs2_bufdata {struct gfs2_glock* bd_gl; int /*<<< orphan*/  bd_ail_st_list; struct gfs2_trans* bd_tr; int /*<<< orphan*/  bd_ail_gl_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_bufdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC18(struct gfs2_sbd *sdp, struct buffer_head *bh,
		       struct gfs2_trans *tr)
{
	struct gfs2_bufdata *bd = bh->b_private;

	FUNC0(!FUNC6(bh));
	FUNC0(!FUNC5(bh));

	FUNC11(bh);
	FUNC12(bh);
	FUNC8(bh);

	if (FUNC4(bd))
		FUNC13(bd);

	FUNC14(&sdp->sd_ail_lock);
	if (bd->bd_tr) {
		FUNC10(&bd->bd_ail_st_list);
		FUNC3(bh);
	} else {
		struct gfs2_glock *gl = bd->bd_gl;
		FUNC9(&bd->bd_ail_gl_list, &gl->gl_ail_list);
		FUNC2(&gl->gl_ail_count);
	}
	bd->bd_tr = tr;
	FUNC9(&bd->bd_ail_st_list, &tr->tr_ail1_list);
	FUNC15(&sdp->sd_ail_lock);

	FUNC7(GLF_LFLUSH, &bd->bd_gl->gl_flags);
	FUNC16(bd, 0);
	FUNC17(bh);
	FUNC1(&sdp->sd_log_pinned);
}