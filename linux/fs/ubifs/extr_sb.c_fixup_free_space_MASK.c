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
struct ubifs_lprops {scalar_t__ free; } ;
struct ubifs_info {scalar_t__ mst_offs; scalar_t__ mst_node_alsz; int lhead_lnum; int ltail_lnum; int lpt_first; int lpt_last; scalar_t__ leb_size; int orph_first; int orph_last; int main_first; int leb_cnt; TYPE_1__* ltab; int /*<<< orphan*/  min_io_size; } ;
struct TYPE_2__ {int free; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ubifs_lprops*) ; 
 int FUNC2 (struct ubifs_lprops*) ; 
 int /*<<< orphan*/  UBIFS_CS_NODE_SZ ; 
 int UBIFS_LOG_LNUM ; 
 int UBIFS_MST_LNUM ; 
 int FUNC3 (struct ubifs_info*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC5 (struct ubifs_info*,int) ; 
 int FUNC6 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC8(struct ubifs_info *c)
{
	int lnum, err = 0;
	struct ubifs_lprops *lprops;

	FUNC4(c);

	/* Fixup LEBs in the master area */
	for (lnum = UBIFS_MST_LNUM; lnum < UBIFS_LOG_LNUM; lnum++) {
		err = FUNC3(c, lnum, c->mst_offs + c->mst_node_alsz);
		if (err)
			goto out;
	}

	/* Unmap unused log LEBs */
	lnum = FUNC6(c, c->lhead_lnum);
	while (lnum != c->ltail_lnum) {
		err = FUNC3(c, lnum, 0);
		if (err)
			goto out;
		lnum = FUNC6(c, lnum);
	}

	/*
	 * Fixup the log head which contains the only a CS node at the
	 * beginning.
	 */
	err = FUNC3(c, c->lhead_lnum,
			FUNC0(UBIFS_CS_NODE_SZ, c->min_io_size));
	if (err)
		goto out;

	/* Fixup LEBs in the LPT area */
	for (lnum = c->lpt_first; lnum <= c->lpt_last; lnum++) {
		int free = c->ltab[lnum - c->lpt_first].free;

		if (free > 0) {
			err = FUNC3(c, lnum, c->leb_size - free);
			if (err)
				goto out;
		}
	}

	/* Unmap LEBs in the orphans area */
	for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
		err = FUNC3(c, lnum, 0);
		if (err)
			goto out;
	}

	/* Fixup LEBs in the main area */
	for (lnum = c->main_first; lnum < c->leb_cnt; lnum++) {
		lprops = FUNC5(c, lnum);
		if (FUNC1(lprops)) {
			err = FUNC2(lprops);
			goto out;
		}

		if (lprops->free > 0) {
			err = FUNC3(c, lnum, c->leb_size - lprops->free);
			if (err)
				goto out;
		}
	}

out:
	FUNC7(c);
	return err;
}