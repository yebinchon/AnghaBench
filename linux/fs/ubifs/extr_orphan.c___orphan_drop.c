
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_orphan {int new_list; scalar_t__ new; int list; int rb; } ;
struct ubifs_info {int tot_orphans; int new_orphans; int orph_tree; } ;


 int kfree (struct ubifs_orphan*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void __orphan_drop(struct ubifs_info *c, struct ubifs_orphan *o)
{
 rb_erase(&o->rb, &c->orph_tree);
 list_del(&o->list);
 c->tot_orphans -= 1;

 if (o->new) {
  list_del(&o->new_list);
  c->new_orphans -= 1;
 }

 kfree(o);
}
