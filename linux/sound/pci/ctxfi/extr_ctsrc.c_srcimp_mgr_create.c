
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcimp_mgr {int init_imap_added; int mgr; int card; int imap_delete; int imap_add; int put_srcimp; int get_srcimp; struct imapper* init_imap; int imappers; int imap_lock; int mgr_lock; } ;
struct imapper {int list; scalar_t__ user; scalar_t__ next; scalar_t__ addr; scalar_t__ slot; } ;
struct hw {int card; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SRCIMP ;
 int SRCIMP_RESOURCE_NUM ;
 int get_srcimp_rsc ;
 int kfree (struct srcimp_mgr*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int put_srcimp_rsc ;
 int rsc_mgr_init (int *,int ,int ,struct hw*) ;
 int rsc_mgr_uninit (int *) ;
 int spin_lock_init (int *) ;
 int srcimp_imap_add ;
 int srcimp_imap_delete ;

int srcimp_mgr_create(struct hw *hw, struct srcimp_mgr **rsrcimp_mgr)
{
 int err;
 struct srcimp_mgr *srcimp_mgr;
 struct imapper *entry;

 *rsrcimp_mgr = ((void*)0);
 srcimp_mgr = kzalloc(sizeof(*srcimp_mgr), GFP_KERNEL);
 if (!srcimp_mgr)
  return -ENOMEM;

 err = rsc_mgr_init(&srcimp_mgr->mgr, SRCIMP, SRCIMP_RESOURCE_NUM, hw);
 if (err)
  goto error1;

 spin_lock_init(&srcimp_mgr->mgr_lock);
 spin_lock_init(&srcimp_mgr->imap_lock);
 INIT_LIST_HEAD(&srcimp_mgr->imappers);
 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  err = -ENOMEM;
  goto error2;
 }
 entry->slot = entry->addr = entry->next = entry->user = 0;
 list_add(&entry->list, &srcimp_mgr->imappers);
 srcimp_mgr->init_imap = entry;
 srcimp_mgr->init_imap_added = 1;

 srcimp_mgr->get_srcimp = get_srcimp_rsc;
 srcimp_mgr->put_srcimp = put_srcimp_rsc;
 srcimp_mgr->imap_add = srcimp_imap_add;
 srcimp_mgr->imap_delete = srcimp_imap_delete;
 srcimp_mgr->card = hw->card;

 *rsrcimp_mgr = srcimp_mgr;

 return 0;

error2:
 rsc_mgr_uninit(&srcimp_mgr->mgr);
error1:
 kfree(srcimp_mgr);
 return err;
}
