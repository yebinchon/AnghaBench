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
struct gfs2_sbd {int /*<<< orphan*/  sd_log_pinned; int /*<<< orphan*/  sd_ail_lock; } ;
struct gfs2_bufdata {TYPE_1__* bd_tr; int /*<<< orphan*/  bd_ail_st_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  journal_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  tr_ail2_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_bufdata*,int) ; 

void FUNC12(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
	struct gfs2_bufdata *bd;

	FUNC0(!current->journal_info);

	FUNC3(bh);
	if (FUNC10(bh))
		FUNC5(sdp, 0);
	if (!FUNC2(bh))
		FUNC6(sdp, bh);
	bd = bh->b_private;
	/* If this buffer is in the AIL and it has already been written
	 * to in-place disk block, remove it from the AIL.
	 */
	FUNC8(&sdp->sd_ail_lock);
	if (bd->bd_tr)
		FUNC7(&bd->bd_ail_st_list, &bd->bd_tr->tr_ail2_list);
	FUNC9(&sdp->sd_ail_lock);
	FUNC4(bh);
	FUNC1(&sdp->sd_log_pinned);
	FUNC11(bd, 1);
}