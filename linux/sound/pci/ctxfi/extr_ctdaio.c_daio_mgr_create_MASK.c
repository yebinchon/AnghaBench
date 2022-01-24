#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imapper {int /*<<< orphan*/  list; scalar_t__ user; scalar_t__ next; scalar_t__ addr; scalar_t__ slot; } ;
struct hw {int /*<<< orphan*/  (* daio_mgr_commit_write ) (struct hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* daio_mgr_dsb_dai ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* daio_mgr_dsb_dao ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  card; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctrl_blk; } ;
struct daio_mgr {int init_imap_added; TYPE_1__ mgr; int /*<<< orphan*/  card; int /*<<< orphan*/  commit_write; int /*<<< orphan*/  imap_delete; int /*<<< orphan*/  imap_add; int /*<<< orphan*/  daio_disable; int /*<<< orphan*/  daio_enable; int /*<<< orphan*/  put_daio; int /*<<< orphan*/  get_daio; struct imapper* init_imap; int /*<<< orphan*/  imappers; int /*<<< orphan*/  imap_lock; int /*<<< orphan*/  mgr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUM_DAIOTYP ; 
 int /*<<< orphan*/  daio_imap_add ; 
 int /*<<< orphan*/  daio_imap_delete ; 
 int /*<<< orphan*/  daio_mgr_commit_write ; 
 int /*<<< orphan*/  daio_mgr_dsb_daio ; 
 int /*<<< orphan*/  daio_mgr_enb_daio ; 
 int /*<<< orphan*/  get_daio_rsc ; 
 int /*<<< orphan*/  FUNC1 (struct daio_mgr*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  put_daio_rsc ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hw*,int /*<<< orphan*/ ) ; 

int FUNC10(struct hw *hw, struct daio_mgr **rdaio_mgr)
{
	int err, i;
	struct daio_mgr *daio_mgr;
	struct imapper *entry;

	*rdaio_mgr = NULL;
	daio_mgr = FUNC2(sizeof(*daio_mgr), GFP_KERNEL);
	if (!daio_mgr)
		return -ENOMEM;

	err = FUNC4(&daio_mgr->mgr, DAIO, NUM_DAIOTYP, hw);
	if (err)
		goto error1;

	FUNC6(&daio_mgr->mgr_lock);
	FUNC6(&daio_mgr->imap_lock);
	FUNC0(&daio_mgr->imappers);
	entry = FUNC2(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		err = -ENOMEM;
		goto error2;
	}
	entry->slot = entry->addr = entry->next = entry->user = 0;
	FUNC3(&entry->list, &daio_mgr->imappers);
	daio_mgr->init_imap = entry;
	daio_mgr->init_imap_added = 1;

	daio_mgr->get_daio = get_daio_rsc;
	daio_mgr->put_daio = put_daio_rsc;
	daio_mgr->daio_enable = daio_mgr_enb_daio;
	daio_mgr->daio_disable = daio_mgr_dsb_daio;
	daio_mgr->imap_add = daio_imap_add;
	daio_mgr->imap_delete = daio_imap_delete;
	daio_mgr->commit_write = daio_mgr_commit_write;
	daio_mgr->card = hw->card;

	for (i = 0; i < 8; i++) {
		hw->daio_mgr_dsb_dao(daio_mgr->mgr.ctrl_blk, i);
		hw->daio_mgr_dsb_dai(daio_mgr->mgr.ctrl_blk, i);
	}
	hw->daio_mgr_commit_write(hw, daio_mgr->mgr.ctrl_blk);

	*rdaio_mgr = daio_mgr;

	return 0;

error2:
	FUNC5(&daio_mgr->mgr);
error1:
	FUNC1(daio_mgr);
	return err;
}