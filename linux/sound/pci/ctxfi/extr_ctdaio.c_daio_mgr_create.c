
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct imapper {int list; scalar_t__ user; scalar_t__ next; scalar_t__ addr; scalar_t__ slot; } ;
struct hw {int (* daio_mgr_commit_write ) (struct hw*,int ) ;int (* daio_mgr_dsb_dai ) (int ,int) ;int (* daio_mgr_dsb_dao ) (int ,int) ;int card; } ;
struct TYPE_3__ {int ctrl_blk; } ;
struct daio_mgr {int init_imap_added; TYPE_1__ mgr; int card; int commit_write; int imap_delete; int imap_add; int daio_disable; int daio_enable; int put_daio; int get_daio; struct imapper* init_imap; int imappers; int imap_lock; int mgr_lock; } ;


 int DAIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_DAIOTYP ;
 int daio_imap_add ;
 int daio_imap_delete ;
 int daio_mgr_commit_write ;
 int daio_mgr_dsb_daio ;
 int daio_mgr_enb_daio ;
 int get_daio_rsc ;
 int kfree (struct daio_mgr*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int put_daio_rsc ;
 int rsc_mgr_init (TYPE_1__*,int ,int ,struct hw*) ;
 int rsc_mgr_uninit (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (struct hw*,int ) ;

int daio_mgr_create(struct hw *hw, struct daio_mgr **rdaio_mgr)
{
 int err, i;
 struct daio_mgr *daio_mgr;
 struct imapper *entry;

 *rdaio_mgr = ((void*)0);
 daio_mgr = kzalloc(sizeof(*daio_mgr), GFP_KERNEL);
 if (!daio_mgr)
  return -ENOMEM;

 err = rsc_mgr_init(&daio_mgr->mgr, DAIO, NUM_DAIOTYP, hw);
 if (err)
  goto error1;

 spin_lock_init(&daio_mgr->mgr_lock);
 spin_lock_init(&daio_mgr->imap_lock);
 INIT_LIST_HEAD(&daio_mgr->imappers);
 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  err = -ENOMEM;
  goto error2;
 }
 entry->slot = entry->addr = entry->next = entry->user = 0;
 list_add(&entry->list, &daio_mgr->imappers);
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
 rsc_mgr_uninit(&daio_mgr->mgr);
error1:
 kfree(daio_mgr);
 return err;
}
