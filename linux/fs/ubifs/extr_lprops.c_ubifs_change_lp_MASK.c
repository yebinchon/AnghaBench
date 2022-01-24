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
typedef  struct ubifs_lprops {int free; int dirty; int flags; int /*<<< orphan*/  lnum; } const ubifs_lprops ;
struct TYPE_2__ {scalar_t__ empty_lebs; scalar_t__ taken_empty_lebs; int total_free; int total_dirty; int total_dead; int total_dark; int total_used; int idx_lebs; } ;
struct ubifs_info {scalar_t__ main_lebs; scalar_t__ freeable_cnt; int leb_size; int dead_wm; int idx_gc_cnt; int /*<<< orphan*/  space_lock; TYPE_1__ lst; int /*<<< orphan*/  lp_mutex; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct ubifs_lprops const*) ; 
 int LPROPS_INDEX ; 
 int LPROPS_NC ; 
 int LPROPS_TAKEN ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_lprops const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC9 (struct ubifs_info*,int) ; 
 struct ubifs_lprops const* FUNC10 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

const struct ubifs_lprops *FUNC11(struct ubifs_info *c,
					   const struct ubifs_lprops *lp,
					   int free, int dirty, int flags,
					   int idx_gc_cnt)
{
	/*
	 * This is the only function that is allowed to change lprops, so we
	 * discard the "const" qualifier.
	 */
	struct ubifs_lprops *lprops = (struct ubifs_lprops *)lp;

	FUNC3("LEB %d, free %d, dirty %d, flags %d",
	       lprops->lnum, free, dirty, flags);

	FUNC8(c, FUNC5(&c->lp_mutex));
	FUNC8(c, c->lst.empty_lebs >= 0 &&
		     c->lst.empty_lebs <= c->main_lebs);
	FUNC8(c, c->freeable_cnt >= 0);
	FUNC8(c, c->freeable_cnt <= c->main_lebs);
	FUNC8(c, c->lst.taken_empty_lebs >= 0);
	FUNC8(c, c->lst.taken_empty_lebs <= c->lst.empty_lebs);
	FUNC8(c, !(c->lst.total_free & 7) && !(c->lst.total_dirty & 7));
	FUNC8(c, !(c->lst.total_dead & 7) && !(c->lst.total_dark & 7));
	FUNC8(c, !(c->lst.total_used & 7));
	FUNC8(c, free == LPROPS_NC || free >= 0);
	FUNC8(c, dirty == LPROPS_NC || dirty >= 0);

	if (!FUNC4(c, lprops)) {
		lprops = FUNC10(c, lprops->lnum);
		if (FUNC1(lprops))
			return lprops;
	} else
		FUNC8(c, lprops == FUNC10(c, lprops->lnum));

	FUNC8(c, !(lprops->free & 7) && !(lprops->dirty & 7));

	FUNC6(&c->space_lock);
	if ((lprops->flags & LPROPS_TAKEN) && lprops->free == c->leb_size)
		c->lst.taken_empty_lebs -= 1;

	if (!(lprops->flags & LPROPS_INDEX)) {
		int old_spc;

		old_spc = lprops->free + lprops->dirty;
		if (old_spc < c->dead_wm)
			c->lst.total_dead -= old_spc;
		else
			c->lst.total_dark -= FUNC9(c, old_spc);

		c->lst.total_used -= c->leb_size - old_spc;
	}

	if (free != LPROPS_NC) {
		free = FUNC0(free, 8);
		c->lst.total_free += free - lprops->free;

		/* Increase or decrease empty LEBs counter if needed */
		if (free == c->leb_size) {
			if (lprops->free != c->leb_size)
				c->lst.empty_lebs += 1;
		} else if (lprops->free == c->leb_size)
			c->lst.empty_lebs -= 1;
		lprops->free = free;
	}

	if (dirty != LPROPS_NC) {
		dirty = FUNC0(dirty, 8);
		c->lst.total_dirty += dirty - lprops->dirty;
		lprops->dirty = dirty;
	}

	if (flags != LPROPS_NC) {
		/* Take care about indexing LEBs counter if needed */
		if ((lprops->flags & LPROPS_INDEX)) {
			if (!(flags & LPROPS_INDEX))
				c->lst.idx_lebs -= 1;
		} else if (flags & LPROPS_INDEX)
			c->lst.idx_lebs += 1;
		lprops->flags = flags;
	}

	if (!(lprops->flags & LPROPS_INDEX)) {
		int new_spc;

		new_spc = lprops->free + lprops->dirty;
		if (new_spc < c->dead_wm)
			c->lst.total_dead += new_spc;
		else
			c->lst.total_dark += FUNC9(c, new_spc);

		c->lst.total_used += c->leb_size - new_spc;
	}

	if ((lprops->flags & LPROPS_TAKEN) && lprops->free == c->leb_size)
		c->lst.taken_empty_lebs += 1;

	FUNC2(c, lprops);
	c->idx_gc_cnt += idx_gc_cnt;
	FUNC7(&c->space_lock);
	return lprops;
}