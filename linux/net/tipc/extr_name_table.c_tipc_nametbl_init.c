
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int nametbl_lock; struct name_table* nametbl; } ;
struct net {int dummy; } ;
struct name_table {int cluster_scope_lock; int cluster_scope; int node_scope; int * services; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int TIPC_NAMETBL_SIZE ;
 struct name_table* kzalloc (int,int ) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 struct tipc_net* tipc_net (struct net*) ;

int tipc_nametbl_init(struct net *net)
{
 struct tipc_net *tn = tipc_net(net);
 struct name_table *nt;
 int i;

 nt = kzalloc(sizeof(*nt), GFP_KERNEL);
 if (!nt)
  return -ENOMEM;

 for (i = 0; i < TIPC_NAMETBL_SIZE; i++)
  INIT_HLIST_HEAD(&nt->services[i]);

 INIT_LIST_HEAD(&nt->node_scope);
 INIT_LIST_HEAD(&nt->cluster_scope);
 rwlock_init(&nt->cluster_scope_lock);
 tn->nametbl = nt;
 spin_lock_init(&tn->nametbl_lock);
 return 0;
}
