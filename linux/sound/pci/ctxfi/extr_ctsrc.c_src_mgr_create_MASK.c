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
struct TYPE_2__ {int /*<<< orphan*/  ctrl_blk; } ;
struct src_mgr {TYPE_1__ mgr; int /*<<< orphan*/  card; int /*<<< orphan*/  commit_write; int /*<<< orphan*/  src_disable; int /*<<< orphan*/  src_enable; int /*<<< orphan*/  src_enable_s; int /*<<< orphan*/  put_src; int /*<<< orphan*/  get_src; int /*<<< orphan*/  mgr_lock; } ;
struct hw {int /*<<< orphan*/  (* src_mgr_commit_write ) (struct hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_mgr_dsb_src ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  card; int /*<<< orphan*/  (* src_dirty_conj_mask ) () ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SRC ; 
 int /*<<< orphan*/  SRC_RESOURCE_NUM ; 
 int /*<<< orphan*/  conj_mask ; 
 int /*<<< orphan*/  get_src_rsc ; 
 int /*<<< orphan*/  FUNC0 (struct src_mgr*) ; 
 struct src_mgr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  put_src_rsc ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  src_disable ; 
 int /*<<< orphan*/  src_enable ; 
 int /*<<< orphan*/  src_enable_s ; 
 int /*<<< orphan*/  src_mgr_commit_write ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hw*,int /*<<< orphan*/ ) ; 

int FUNC7(struct hw *hw, struct src_mgr **rsrc_mgr)
{
	int err, i;
	struct src_mgr *src_mgr;

	*rsrc_mgr = NULL;
	src_mgr = FUNC1(sizeof(*src_mgr), GFP_KERNEL);
	if (!src_mgr)
		return -ENOMEM;

	err = FUNC2(&src_mgr->mgr, SRC, SRC_RESOURCE_NUM, hw);
	if (err)
		goto error1;

	FUNC3(&src_mgr->mgr_lock);
	conj_mask = hw->src_dirty_conj_mask();

	src_mgr->get_src = get_src_rsc;
	src_mgr->put_src = put_src_rsc;
	src_mgr->src_enable_s = src_enable_s;
	src_mgr->src_enable = src_enable;
	src_mgr->src_disable = src_disable;
	src_mgr->commit_write = src_mgr_commit_write;
	src_mgr->card = hw->card;

	/* Disable all SRC resources. */
	for (i = 0; i < 256; i++)
		hw->src_mgr_dsb_src(src_mgr->mgr.ctrl_blk, i);

	hw->src_mgr_commit_write(hw, src_mgr->mgr.ctrl_blk);

	*rsrc_mgr = src_mgr;

	return 0;

error1:
	FUNC0(src_mgr);
	return err;
}