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
struct ubifs_wbuf {int lnum; scalar_t__ offs; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  jhead; } ;
struct ubifs_lprops {int flags; scalar_t__ free; scalar_t__ dirty; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {int gc_lnum; scalar_t__ leb_size; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOSPC ; 
 size_t GCHD ; 
 int LEB_RETAINED ; 
 int LPROPS_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,char*,int) ; 
 int FUNC6 (struct ubifs_info*,struct ubifs_lprops*,scalar_t__,int) ; 
 int FUNC7 (struct ubifs_info*,struct ubifs_lprops*) ; 
 int FUNC8 (struct ubifs_info*,int) ; 
 int FUNC9 (struct ubifs_info*) ; 
 int FUNC10 (struct ubifs_wbuf*) ; 

int FUNC11(struct ubifs_info *c)
{
	struct ubifs_wbuf *wbuf = &c->jheads[GCHD].wbuf;
	struct ubifs_lprops lp;
	int err;

	FUNC0("GC head LEB %d, offs %d", wbuf->lnum, wbuf->offs);

	c->gc_lnum = -1;
	if (wbuf->lnum == -1 || wbuf->offs == c->leb_size)
		return FUNC1(c);

	err = FUNC6(c, &lp, wbuf->offs, 2);
	if (err) {
		if (err != -ENOSPC)
			return err;

		FUNC0("could not find a dirty LEB");
		return FUNC1(c);
	}

	FUNC4(c, !(lp.flags & LPROPS_INDEX));
	FUNC4(c, lp.free + lp.dirty >= wbuf->offs);

	/*
	 * We run the commit before garbage collection otherwise subsequent
	 * mounts will see the GC and orphan deletion in a different order.
	 */
	FUNC0("committing");
	err = FUNC9(c);
	if (err)
		return err;

	FUNC0("GC'ing LEB %d", lp.lnum);
	FUNC2(&wbuf->io_mutex, wbuf->jhead);
	err = FUNC7(c, &lp);
	if (err >= 0) {
		int err2 = FUNC10(wbuf);

		if (err2)
			err = err2;
	}
	FUNC3(&wbuf->io_mutex);
	if (err < 0) {
		FUNC5(c, "GC failed, error %d", err);
		if (err == -EAGAIN)
			err = -EINVAL;
		return err;
	}

	FUNC4(c, err == LEB_RETAINED);
	if (err != LEB_RETAINED)
		return -EINVAL;

	err = FUNC8(c, c->gc_lnum);
	if (err)
		return err;

	FUNC0("allocated LEB %d for GC", lp.lnum);
	return 0;
}