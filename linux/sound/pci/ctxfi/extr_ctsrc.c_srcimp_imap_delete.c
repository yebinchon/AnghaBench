
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcimp_mgr {int init_imap_added; int imap_lock; int init_imap; int imappers; } ;
struct imapper {int dummy; } ;


 int input_mapper_add (int *,int ,int ,struct srcimp_mgr*) ;
 int input_mapper_delete (int *,struct imapper*,int ,struct srcimp_mgr*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srcimp_map_op ;

__attribute__((used)) static int srcimp_imap_delete(struct srcimp_mgr *mgr, struct imapper *entry)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&mgr->imap_lock, flags);
 err = input_mapper_delete(&mgr->imappers, entry, srcimp_map_op, mgr);
 if (list_empty(&mgr->imappers)) {
  input_mapper_add(&mgr->imappers, mgr->init_imap,
     srcimp_map_op, mgr);
  mgr->init_imap_added = 1;
 }
 spin_unlock_irqrestore(&mgr->imap_lock, flags);

 return err;
}
