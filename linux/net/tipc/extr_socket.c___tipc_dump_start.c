
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int sk_rht; } ;
struct rhashtable_iter {int dummy; } ;
struct netlink_callback {long* args; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rhashtable_iter* kmalloc (int,int ) ;
 int rhashtable_walk_enter (int *,struct rhashtable_iter*) ;
 struct tipc_net* tipc_net (struct net*) ;

int __tipc_dump_start(struct netlink_callback *cb, struct net *net)
{

 struct rhashtable_iter *iter = (void *)cb->args[4];
 struct tipc_net *tn = tipc_net(net);

 if (!iter) {
  iter = kmalloc(sizeof(*iter), GFP_KERNEL);
  if (!iter)
   return -ENOMEM;

  cb->args[4] = (long)iter;
 }

 rhashtable_walk_enter(&tn->sk_rht, iter);
 return 0;
}
