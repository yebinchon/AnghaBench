#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gfs2_trans {int /*<<< orphan*/  tr_num_revoke; int /*<<< orphan*/  tr_flags; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_bufdata {int /*<<< orphan*/  bd_list; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct gfs2_sbd *sdp, struct gfs2_bufdata *bd)
{
	struct gfs2_trans *tr = current->journal_info;

	FUNC0(!FUNC2(&bd->bd_list));
	FUNC1(sdp, bd);
	FUNC3(TR_TOUCHED, &tr->tr_flags);
	tr->tr_num_revoke++;
}