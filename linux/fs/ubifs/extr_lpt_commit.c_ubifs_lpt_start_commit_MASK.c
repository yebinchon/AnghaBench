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
struct ubifs_lpt_lprops {int dummy; } ;
struct ubifs_info {int lpt_lebs; int lpt_drty_flgs; int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  ltab; int /*<<< orphan*/  ltab_cmt; TYPE_1__* mst_node; scalar_t__ big_lpt; int /*<<< orphan*/  dirty_pn_cnt; scalar_t__ check_lpt_free; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_lpt; } ;

/* Variables and functions */
 int LSAVE_DIRTY ; 
 int LTAB_DIRTY ; 
 int FUNC0 (struct ubifs_info*) ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct ubifs_info*) ; 
 int FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int FUNC8 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int FUNC15 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

int FUNC16(struct ubifs_info *c)
{
	int err, cnt;

	FUNC3("");

	FUNC10(&c->lp_mutex);
	err = FUNC1(c);
	if (err)
		goto out;
	err = FUNC0(c);
	if (err)
		goto out;

	if (c->check_lpt_free) {
		/*
		 * We ensure there is enough free space in
		 * ubifs_lpt_post_commit() by marking nodes dirty. That
		 * information is lost when we unmount, so we also need
		 * to check free space once after mounting also.
		 */
		c->check_lpt_free = 0;
		while (FUNC12(c)) {
			FUNC11(&c->lp_mutex);
			err = FUNC6(c);
			if (err)
				return err;
			FUNC10(&c->lp_mutex);
		}
	}

	FUNC7(c);

	if (!c->dirty_pn_cnt) {
		FUNC2("no cnodes to commit");
		err = 0;
		goto out;
	}

	if (!c->big_lpt && FUNC12(c)) {
		/* If needed, write everything */
		err = FUNC8(c);
		if (err)
			goto out;
		FUNC7(c);
	}

	if (c->big_lpt)
		FUNC13(c);

	cnt = FUNC4(c);
	FUNC14(c, cnt != 0);

	err = FUNC5(c);
	if (err)
		goto out;

	err = FUNC15(c, c->mst_node->hash_lpt);
	if (err)
		goto out;

	/* Copy the LPT's own lprops for end commit to write */
	FUNC9(c->ltab_cmt, c->ltab,
	       sizeof(struct ubifs_lpt_lprops) * c->lpt_lebs);
	c->lpt_drty_flgs &= ~(LTAB_DIRTY | LSAVE_DIRTY);

out:
	FUNC11(&c->lp_mutex);
	return err;
}