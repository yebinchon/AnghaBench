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
struct ubifs_lprops {int dirty; scalar_t__ free; int flags; } ;
struct ubifs_info {scalar_t__ leb_size; TYPE_1__* jheads; } ;
struct bud_entry {scalar_t__ free; int dirty; TYPE_2__* bud; } ;
struct TYPE_4__ {scalar_t__ start; size_t jhead; int /*<<< orphan*/  lnum; } ;
struct TYPE_3__ {int /*<<< orphan*/  wbuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int LPROPS_TAKEN ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int,...) ; 
 struct ubifs_lprops* FUNC4 (struct ubifs_info*,struct ubifs_lprops const*,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC6 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct ubifs_info *c, struct bud_entry *b)
{
	const struct ubifs_lprops *lp;
	int err = 0, dirty;

	FUNC5(c);

	lp = FUNC6(c, b->bud->lnum);
	if (FUNC0(lp)) {
		err = FUNC1(lp);
		goto out;
	}

	dirty = lp->dirty;
	if (b->bud->start == 0 && (lp->free != c->leb_size || lp->dirty != 0)) {
		/*
		 * The LEB was added to the journal with a starting offset of
		 * zero which means the LEB must have been empty. The LEB
		 * property values should be @lp->free == @c->leb_size and
		 * @lp->dirty == 0, but that is not the case. The reason is that
		 * the LEB had been garbage collected before it became the bud,
		 * and there was not commit inbetween. The garbage collector
		 * resets the free and dirty space without recording it
		 * anywhere except lprops, so if there was no commit then
		 * lprops does not have that information.
		 *
		 * We do not need to adjust free space because the scan has told
		 * us the exact value which is recorded in the replay entry as
		 * @b->free.
		 *
		 * However we do need to subtract from the dirty space the
		 * amount of space that the garbage collector reclaimed, which
		 * is the whole LEB minus the amount of space that was free.
		 */
		FUNC3("bud LEB %d was GC'd (%d free, %d dirty)", b->bud->lnum,
			lp->free, lp->dirty);
		FUNC2("bud LEB %d was GC'd (%d free, %d dirty)", b->bud->lnum,
			lp->free, lp->dirty);
		dirty -= c->leb_size - lp->free;
		/*
		 * If the replay order was perfect the dirty space would now be
		 * zero. The order is not perfect because the journal heads
		 * race with each other. This is not a problem but is does mean
		 * that the dirty space may temporarily exceed c->leb_size
		 * during the replay.
		 */
		if (dirty != 0)
			FUNC3("LEB %d lp: %d free %d dirty replay: %d free %d dirty",
				b->bud->lnum, lp->free, lp->dirty, b->free,
				b->dirty);
	}
	lp = FUNC4(c, lp, b->free, dirty + b->dirty,
			     lp->flags | LPROPS_TAKEN, 0);
	if (FUNC0(lp)) {
		err = FUNC1(lp);
		goto out;
	}

	/* Make sure the journal head points to the latest bud */
	err = FUNC8(&c->jheads[b->bud->jhead].wbuf,
				     b->bud->lnum, c->leb_size - b->free);

out:
	FUNC7(c);
	return err;
}