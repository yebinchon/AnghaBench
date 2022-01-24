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
struct ubifs_info {int log_last; int lpt_first; int lpt_last; int orph_first; int orph_last; int ihead_lnum; scalar_t__ cmt_state; int /*<<< orphan*/  buds; TYPE_2__* jheads; struct ubifs_debug_info* dbg; } ;
struct ubifs_debug_info {int pc_delay; unsigned long pc_cnt_max; int pc_happened; scalar_t__ pc_cnt; int /*<<< orphan*/  pc_timeout; } ;
struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ wbuf; } ;

/* Variables and functions */
 scalar_t__ COMMIT_RUNNING_BACKGROUND ; 
 scalar_t__ COMMIT_RUNNING_REQUIRED ; 
 size_t GCHD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int UBIFS_LOG_LNUM ; 
 int UBIFS_MST_LNUM ; 
 int UBIFS_SB_LNUM ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,char*,...) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, int lnum, int write)
{
	struct ubifs_debug_info *d = c->dbg;

	FUNC7(c, FUNC2(c));

	if (!d->pc_cnt) {
		/* First call - decide delay to the power cut */
		if (FUNC1(1, 2)) {
			unsigned long delay;

			if (FUNC1(1, 2)) {
				d->pc_delay = 1;
				/* Fail within 1 minute */
				delay = FUNC5() % 60000;
				d->pc_timeout = jiffies;
				d->pc_timeout += FUNC4(delay);
				FUNC9(c, "failing after %lums", delay);
			} else {
				d->pc_delay = 2;
				delay = FUNC5() % 10000;
				/* Fail within 10000 operations */
				d->pc_cnt_max = delay;
				FUNC9(c, "failing after %lu calls", delay);
			}
		}

		d->pc_cnt += 1;
	}

	/* Determine if failure delay has expired */
	if (d->pc_delay == 1 && FUNC6(jiffies, d->pc_timeout))
			return 0;
	if (d->pc_delay == 2 && d->pc_cnt++ < d->pc_cnt_max)
			return 0;

	if (lnum == UBIFS_SB_LNUM) {
		if (write && FUNC1(1, 2))
			return 0;
		if (FUNC1(19, 20))
			return 0;
		FUNC9(c, "failing in super block LEB %d", lnum);
	} else if (lnum == UBIFS_MST_LNUM || lnum == UBIFS_MST_LNUM + 1) {
		if (FUNC1(19, 20))
			return 0;
		FUNC9(c, "failing in master LEB %d", lnum);
	} else if (lnum >= UBIFS_LOG_LNUM && lnum <= c->log_last) {
		if (write && FUNC1(99, 100))
			return 0;
		if (FUNC1(399, 400))
			return 0;
		FUNC9(c, "failing in log LEB %d", lnum);
	} else if (lnum >= c->lpt_first && lnum <= c->lpt_last) {
		if (write && FUNC1(7, 8))
			return 0;
		if (FUNC1(19, 20))
			return 0;
		FUNC9(c, "failing in LPT LEB %d", lnum);
	} else if (lnum >= c->orph_first && lnum <= c->orph_last) {
		if (write && FUNC1(1, 2))
			return 0;
		if (FUNC1(9, 10))
			return 0;
		FUNC9(c, "failing in orphan LEB %d", lnum);
	} else if (lnum == c->ihead_lnum) {
		if (FUNC1(99, 100))
			return 0;
		FUNC9(c, "failing in index head LEB %d", lnum);
	} else if (c->jheads && lnum == c->jheads[GCHD].wbuf.lnum) {
		if (FUNC1(9, 10))
			return 0;
		FUNC9(c, "failing in GC head LEB %d", lnum);
	} else if (write && !FUNC0(&c->buds) &&
		   !FUNC8(c, lnum)) {
		if (FUNC1(19, 20))
			return 0;
		FUNC9(c, "failing in non-bud LEB %d", lnum);
	} else if (c->cmt_state == COMMIT_RUNNING_BACKGROUND ||
		   c->cmt_state == COMMIT_RUNNING_REQUIRED) {
		if (FUNC1(999, 1000))
			return 0;
		FUNC9(c, "failing in bud LEB %d commit running", lnum);
	} else {
		if (FUNC1(9999, 10000))
			return 0;
		FUNC9(c, "failing in bud LEB %d commit not running", lnum);
	}

	d->pc_happened = 1;
	FUNC9(c, "========== Power cut emulated ==========");
	FUNC3();
	return 1;
}