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
struct ubifs_budget_req {int /*<<< orphan*/  dd_growth; int /*<<< orphan*/  data_growth; int /*<<< orphan*/  idx_growth; int /*<<< orphan*/  mod_dent; int /*<<< orphan*/  new_dent; int /*<<< orphan*/  dirtied_page; int /*<<< orphan*/  new_page; int /*<<< orphan*/  dirtied_ino_d; int /*<<< orphan*/  new_ino_d; int /*<<< orphan*/  dirtied_ino; int /*<<< orphan*/  new_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  dbg_lock ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(const struct ubifs_budget_req *req)
{
	FUNC1(&dbg_lock);
	FUNC0("Budgeting request: new_ino %d, dirtied_ino %d\n",
	       req->new_ino, req->dirtied_ino);
	FUNC0("\tnew_ino_d   %d, dirtied_ino_d %d\n",
	       req->new_ino_d, req->dirtied_ino_d);
	FUNC0("\tnew_page    %d, dirtied_page %d\n",
	       req->new_page, req->dirtied_page);
	FUNC0("\tnew_dent    %d, mod_dent     %d\n",
	       req->new_dent, req->mod_dent);
	FUNC0("\tidx_growth  %d\n", req->idx_growth);
	FUNC0("\tdata_growth %d dd_growth     %d\n",
	       req->data_growth, req->dd_growth);
	FUNC2(&dbg_lock);
}