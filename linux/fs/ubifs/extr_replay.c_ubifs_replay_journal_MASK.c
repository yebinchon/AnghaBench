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
struct TYPE_2__ {int /*<<< orphan*/  uncommitted_idx; } ;
struct ubifs_info {int ihead_offs; int leb_size; int ihead_lnum; int replaying; int ltail_lnum; int lhead_lnum; scalar_t__ bud_bytes; scalar_t__ max_bud_bytes; scalar_t__ highest_inum; int /*<<< orphan*/  max_sqnum; int /*<<< orphan*/  lhead_offs; scalar_t__ need_recovery; int /*<<< orphan*/  max_idx_node_sz; TYPE_1__ bi; int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  sbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int UBIFS_TRUN_KEY ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*) ; 
 int FUNC7 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*) ; 
 int FUNC9 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,char*,int,int) ; 
 int FUNC12 (struct ubifs_info*,int) ; 

int FUNC13(struct ubifs_info *c)
{
	int err, lnum, free;

	FUNC0(UBIFS_TRUN_KEY > 5);

	/* Update the status of the index head in lprops to 'taken' */
	free = FUNC9(c);
	if (free < 0)
		return free; /* Error code */

	if (c->ihead_offs != c->leb_size - free) {
		FUNC11(c, "bad index head LEB %d:%d", c->ihead_lnum,
			  c->ihead_offs);
		return -EINVAL;
	}

	FUNC3("start replaying the journal");
	c->replaying = 1;
	lnum = c->ltail_lnum = c->lhead_lnum;

	do {
		err = FUNC7(c, lnum, 0, c->sbuf);
		if (err == 1) {
			if (lnum != c->lhead_lnum)
				/* We hit the end of the log */
				break;

			/*
			 * The head of the log must always start with the
			 * "commit start" node on a properly formatted UBIFS.
			 * But we found no nodes at all, which means that
			 * something went wrong and we cannot proceed mounting
			 * the file-system.
			 */
			FUNC11(c, "no UBIFS nodes found at the log head LEB %d:%d, possibly corrupted",
				  lnum, 0);
			err = -EINVAL;
		}
		if (err)
			goto out;
		lnum = FUNC12(c, lnum);
	} while (lnum != c->ltail_lnum);

	err = FUNC6(c);
	if (err)
		goto out;

	err = FUNC1(c);
	if (err)
		goto out;

	err = FUNC8(c);
	if (err)
		goto out;

	/*
	 * UBIFS budgeting calculations use @c->bi.uncommitted_idx variable
	 * to roughly estimate index growth. Things like @c->bi.min_idx_lebs
	 * depend on it. This means we have to initialize it to make sure
	 * budgeting works properly.
	 */
	c->bi.uncommitted_idx = FUNC2(&c->dirty_zn_cnt);
	c->bi.uncommitted_idx *= c->max_idx_node_sz;

	FUNC10(c, c->bud_bytes <= c->max_bud_bytes || c->need_recovery);
	FUNC3("finished, log head LEB %d:%d, max_sqnum %llu, highest_inum %lu",
		c->lhead_lnum, c->lhead_offs, c->max_sqnum,
		(unsigned long)c->highest_inum);
out:
	FUNC5(c);
	FUNC4(c);
	c->replaying = 0;
	return err;
}