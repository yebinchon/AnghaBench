
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcimp_mgr {int imap_lock; int imappers; scalar_t__ init_imap_added; int init_imap; } ;
struct imapper {scalar_t__ addr; } ;


 int input_mapper_add (int *,struct imapper*,int ,struct srcimp_mgr*) ;
 int input_mapper_delete (int *,int ,int ,struct srcimp_mgr*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srcimp_map_op ;

__attribute__((used)) static int srcimp_imap_add(struct srcimp_mgr *mgr, struct imapper *entry)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&mgr->imap_lock, flags);
 if ((0 == entry->addr) && (mgr->init_imap_added)) {
  input_mapper_delete(&mgr->imappers,
        mgr->init_imap, srcimp_map_op, mgr);
  mgr->init_imap_added = 0;
 }
 err = input_mapper_add(&mgr->imappers, entry, srcimp_map_op, mgr);
 spin_unlock_irqrestore(&mgr->imap_lock, flags);

 return err;
}
