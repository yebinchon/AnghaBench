
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct TYPE_2__ {int list_lock; int count; } ;
struct nf_conncount_rb {TYPE_1__ list; int rcu_head; int node; } ;


 int __tree_nodes_free ;
 int call_rcu (int *,int ) ;
 int rb_erase (int *,struct rb_root*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void tree_nodes_free(struct rb_root *root,
       struct nf_conncount_rb *gc_nodes[],
       unsigned int gc_count)
{
 struct nf_conncount_rb *rbconn;

 while (gc_count) {
  rbconn = gc_nodes[--gc_count];
  spin_lock(&rbconn->list.list_lock);
  if (!rbconn->list.count) {
   rb_erase(&rbconn->node, root);
   call_rcu(&rbconn->rcu_head, __tree_nodes_free);
  }
  spin_unlock(&rbconn->list.list_lock);
 }
}
