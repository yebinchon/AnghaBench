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
struct TYPE_2__ {int idx_growth; int data_growth; int dd_growth; scalar_t__ min_idx_lebs; int /*<<< orphan*/  uncommitted_idx; scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_info {scalar_t__ main_lebs; int /*<<< orphan*/  space_lock; TYPE_1__ bi; } ;
struct ubifs_budget_req {int new_page; int dirtied_page; int new_dent; int mod_dent; int new_ino; int new_ino_d; int dirtied_ino; int dirtied_ino_d; scalar_t__ idx_growth; scalar_t__ data_growth; scalar_t__ dd_growth; scalar_t__ recalculate; } ;

/* Variables and functions */
 int UBIFS_MAX_INO_DATA ; 
 scalar_t__ FUNC0 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 scalar_t__ FUNC1 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 scalar_t__ FUNC2 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC7 (struct ubifs_info*) ; 

void FUNC8(struct ubifs_info *c, struct ubifs_budget_req *req)
{
	FUNC6(c, req->new_page <= 1);
	FUNC6(c, req->dirtied_page <= 1);
	FUNC6(c, req->new_dent <= 1);
	FUNC6(c, req->mod_dent <= 1);
	FUNC6(c, req->new_ino <= 1);
	FUNC6(c, req->new_ino_d <= UBIFS_MAX_INO_DATA);
	FUNC6(c, req->dirtied_ino <= 4);
	FUNC6(c, req->dirtied_ino_d <= UBIFS_MAX_INO_DATA * 4);
	FUNC6(c, !(req->new_ino_d & 7));
	FUNC6(c, !(req->dirtied_ino_d & 7));
	if (!req->recalculate) {
		FUNC6(c, req->idx_growth >= 0);
		FUNC6(c, req->data_growth >= 0);
		FUNC6(c, req->dd_growth >= 0);
	}

	if (req->recalculate) {
		req->data_growth = FUNC0(c, req);
		req->dd_growth = FUNC1(c, req);
		req->idx_growth = FUNC2(c, req);
	}

	if (!req->data_growth && !req->dd_growth)
		return;

	c->bi.nospace = c->bi.nospace_rp = 0;
	FUNC3();

	FUNC4(&c->space_lock);
	c->bi.idx_growth -= req->idx_growth;
	c->bi.uncommitted_idx += req->idx_growth;
	c->bi.data_growth -= req->data_growth;
	c->bi.dd_growth -= req->dd_growth;
	c->bi.min_idx_lebs = FUNC7(c);

	FUNC6(c, c->bi.idx_growth >= 0);
	FUNC6(c, c->bi.data_growth >= 0);
	FUNC6(c, c->bi.dd_growth >= 0);
	FUNC6(c, c->bi.min_idx_lebs < c->main_lebs);
	FUNC6(c, !(c->bi.idx_growth & 7));
	FUNC6(c, !(c->bi.data_growth & 7));
	FUNC6(c, !(c->bi.dd_growth & 7));
	FUNC5(&c->space_lock);
}