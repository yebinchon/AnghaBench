
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imapper {int dummy; } ;
struct daio_mgr {int init_imap_added; int imap_lock; int init_imap; int imappers; } ;


 int daio_map_op ;
 int input_mapper_add (int *,int ,int ,struct daio_mgr*) ;
 int input_mapper_delete (int *,struct imapper*,int ,struct daio_mgr*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int daio_imap_delete(struct daio_mgr *mgr, struct imapper *entry)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&mgr->imap_lock, flags);
 err = input_mapper_delete(&mgr->imappers, entry, daio_map_op, mgr);
 if (list_empty(&mgr->imappers)) {
  input_mapper_add(&mgr->imappers, mgr->init_imap,
       daio_map_op, mgr);
  mgr->init_imap_added = 1;
 }
 spin_unlock_irqrestore(&mgr->imap_lock, flags);

 return err;
}
