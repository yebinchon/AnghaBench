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
struct TYPE_2__ {int idx_growth; int data_growth; int dd_growth; int nospace; int nospace_rp; } ;
struct ubifs_info {scalar_t__ rp_size; TYPE_1__ bi; int /*<<< orphan*/  space_lock; } ;
struct ubifs_budget_req {int new_page; int dirtied_page; int new_dent; int mod_dent; int new_ino; int new_ino_d; int dirtied_ino; int dirtied_ino_d; int idx_growth; int data_growth; int dd_growth; scalar_t__ fast; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int UBIFS_MAX_INO_DATA ; 
 int FUNC0 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC1 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 scalar_t__ FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct ubifs_info*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,char*,int) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct ubifs_info *c, struct ubifs_budget_req *req)
{
	int err, idx_growth, data_growth, dd_growth, retried = 0;

	FUNC12(c, req->new_page <= 1);
	FUNC12(c, req->dirtied_page <= 1);
	FUNC12(c, req->new_dent <= 1);
	FUNC12(c, req->mod_dent <= 1);
	FUNC12(c, req->new_ino <= 1);
	FUNC12(c, req->new_ino_d <= UBIFS_MAX_INO_DATA);
	FUNC12(c, req->dirtied_ino <= 4);
	FUNC12(c, req->dirtied_ino_d <= UBIFS_MAX_INO_DATA * 4);
	FUNC12(c, !(req->new_ino_d & 7));
	FUNC12(c, !(req->dirtied_ino_d & 7));

	data_growth = FUNC0(c, req);
	dd_growth = FUNC1(c, req);
	if (!data_growth && !dd_growth)
		return 0;
	idx_growth = FUNC2(c, req);

again:
	FUNC10(&c->space_lock);
	FUNC12(c, c->bi.idx_growth >= 0);
	FUNC12(c, c->bi.data_growth >= 0);
	FUNC12(c, c->bi.dd_growth >= 0);

	if (FUNC14(c->bi.nospace) && (c->bi.nospace_rp || !FUNC3(c))) {
		FUNC5("no space");
		FUNC11(&c->space_lock);
		return -ENOSPC;
	}

	c->bi.idx_growth += idx_growth;
	c->bi.data_growth += data_growth;
	c->bi.dd_growth += dd_growth;

	err = FUNC6(c);
	if (FUNC7(!err)) {
		req->idx_growth = idx_growth;
		req->data_growth = data_growth;
		req->dd_growth = dd_growth;
		FUNC11(&c->space_lock);
		return 0;
	}

	/* Restore the old values */
	c->bi.idx_growth -= idx_growth;
	c->bi.data_growth -= data_growth;
	c->bi.dd_growth -= dd_growth;
	FUNC11(&c->space_lock);

	if (req->fast) {
		FUNC5("no space for fast budgeting");
		return err;
	}

	err = FUNC8(c);
	FUNC4();
	if (err == -EAGAIN) {
		FUNC5("try again");
		goto again;
	} else if (err == -ENOSPC) {
		if (!retried) {
			retried = 1;
			FUNC5("-ENOSPC, but anyway try once again");
			goto again;
		}
		FUNC5("FS is full, -ENOSPC");
		c->bi.nospace = 1;
		if (FUNC3(c) || c->rp_size == 0)
			c->bi.nospace_rp = 1;
		FUNC9();
	} else
		FUNC13(c, "cannot budget space, error %d", err);
	return err;
}