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
struct gfs2_trans {int /*<<< orphan*/  tr_flags; int /*<<< orphan*/  tr_num_databuf_rm; int /*<<< orphan*/  tr_num_buf_rm; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_ail_lock; int /*<<< orphan*/  sd_log_pinned; } ;
struct gfs2_bufdata {scalar_t__ bd_tr; int /*<<< orphan*/  bd_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; TYPE_1__* b_page; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;
struct TYPE_3__ {struct address_space* mapping; } ;

/* Variables and functions */
 int REMOVE_META ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  gfs2_bufdata_cachep ; 
 struct gfs2_sbd* FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_bufdata*,int /*<<< orphan*/ ) ; 

void FUNC13(struct buffer_head *bh, int meta)
{
	struct address_space *mapping = bh->b_page->mapping;
	struct gfs2_sbd *sdp = FUNC4(mapping);
	struct gfs2_bufdata *bd = bh->b_private;
	struct gfs2_trans *tr = current->journal_info;
	int was_pinned = 0;

	if (FUNC11(bh)) {
		FUNC12(bd, 0);
		FUNC0(&sdp->sd_log_pinned);
		FUNC7(&bd->bd_list);
		if (meta == REMOVE_META)
			tr->tr_num_buf_rm++;
		else
			tr->tr_num_databuf_rm++;
		FUNC8(TR_TOUCHED, &tr->tr_flags);
		was_pinned = 1;
		FUNC1(bh);
	}
	if (bd) {
		FUNC9(&sdp->sd_ail_lock);
		if (bd->bd_tr) {
			FUNC5(sdp, bd);
		} else if (was_pinned) {
			bh->b_private = NULL;
			FUNC6(gfs2_bufdata_cachep, bd);
		}
		FUNC10(&sdp->sd_ail_lock);
	}
	FUNC2(bh);
	FUNC3(bh);
}