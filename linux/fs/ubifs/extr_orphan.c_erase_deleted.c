
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_orphan {int del; scalar_t__ inum; int list; int rb; int new; struct ubifs_orphan* dnext; } ;
struct ubifs_info {int tot_orphans; int orphan_lock; struct ubifs_orphan* orph_dnext; int orph_tree; } ;


 int dbg_gen (char*,unsigned long) ;
 int kfree (struct ubifs_orphan*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static void erase_deleted(struct ubifs_info *c)
{
 struct ubifs_orphan *orphan, *dnext;

 spin_lock(&c->orphan_lock);
 dnext = c->orph_dnext;
 while (dnext) {
  orphan = dnext;
  dnext = orphan->dnext;
  ubifs_assert(c, !orphan->new);
  ubifs_assert(c, orphan->del);
  rb_erase(&orphan->rb, &c->orph_tree);
  list_del(&orphan->list);
  c->tot_orphans -= 1;
  dbg_gen("deleting orphan ino %lu", (unsigned long)orphan->inum);
  kfree(orphan);
 }
 c->orph_dnext = ((void*)0);
 spin_unlock(&c->orphan_lock);
}
