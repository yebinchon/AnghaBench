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
struct ubifs_lp_stats {int dummy; } ;
struct ubifs_info {int freeable_cnt; int /*<<< orphan*/  bi; int /*<<< orphan*/  space_lock; struct ubifs_debug_info* dbg; } ;
struct ubifs_debug_info {long long saved_free; int /*<<< orphan*/  saved_idx_gc_cnt; int /*<<< orphan*/  saved_bi; struct ubifs_lp_stats saved_lst; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_lp_stats*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,char*,long long,long long) ; 
 long long FUNC6 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,struct ubifs_lp_stats*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,...) ; 

int FUNC9(struct ubifs_info *c)
{
	struct ubifs_debug_info *d = c->dbg;
	struct ubifs_lp_stats lst;
	long long free;
	int freeable_cnt;

	FUNC1(&c->space_lock);
	freeable_cnt = c->freeable_cnt;
	c->freeable_cnt = 0;
	free = FUNC6(c);
	c->freeable_cnt = freeable_cnt;
	FUNC2(&c->space_lock);

	if (free != d->saved_free) {
		FUNC5(c, "free space changed from %lld to %lld",
			  d->saved_free, free);
		goto out;
	}

	return 0;

out:
	FUNC8(c, "saved lprops statistics dump");
	FUNC4(&d->saved_lst);
	FUNC8(c, "saved budgeting info dump");
	FUNC3(c, &d->saved_bi);
	FUNC8(c, "saved idx_gc_cnt %d", d->saved_idx_gc_cnt);
	FUNC8(c, "current lprops statistics dump");
	FUNC7(c, &lst);
	FUNC4(&lst);
	FUNC8(c, "current budgeting info dump");
	FUNC3(c, &c->bi);
	FUNC0();
	return -EINVAL;
}