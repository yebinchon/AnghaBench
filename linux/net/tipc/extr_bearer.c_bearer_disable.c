
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_net {int * bearer_list; } ;
struct tipc_bearer {int identity; scalar_t__ disc; int media_ptr; TYPE_1__* media; int up; int name; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* disable_media ) (struct tipc_bearer*) ;} ;


 int RCU_INIT_POINTER (int ,int *) ;
 int clear_bit_unlock (int ,int *) ;
 int kfree_rcu (struct tipc_bearer*,int ) ;
 int pr_info (char*,int ) ;
 int rcu ;
 int stub1 (struct tipc_bearer*) ;
 int tipc_disc_delete (scalar_t__) ;
 int tipc_mon_delete (struct net*,int) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_node_delete_links (struct net*,int) ;

__attribute__((used)) static void bearer_disable(struct net *net, struct tipc_bearer *b)
{
 struct tipc_net *tn = tipc_net(net);
 int bearer_id = b->identity;

 pr_info("Disabling bearer <%s>\n", b->name);
 clear_bit_unlock(0, &b->up);
 tipc_node_delete_links(net, bearer_id);
 b->media->disable_media(b);
 RCU_INIT_POINTER(b->media_ptr, ((void*)0));
 if (b->disc)
  tipc_disc_delete(b->disc);
 RCU_INIT_POINTER(tn->bearer_list[bearer_id], ((void*)0));
 kfree_rcu(b, rcu);
 tipc_mon_delete(net, bearer_id);
}
