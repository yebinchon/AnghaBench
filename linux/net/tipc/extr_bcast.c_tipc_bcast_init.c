
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {struct tipc_link* bcl; int bclock; struct tipc_link* bcbase; } ;
struct tipc_link {int rc_ratio; int rcast_support; struct tipc_link* link; int inputq; } ;
struct tipc_bc_base {int rc_ratio; int rcast_support; struct tipc_bc_base* link; int inputq; } ;
struct net {int dummy; } ;


 int BCLINK_WIN_DEFAULT ;
 int ENOMEM ;
 int FB_MTU ;
 int GFP_KERNEL ;
 int kfree (struct tipc_link*) ;
 struct tipc_link* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tipc_link_bc_create (struct net*,int ,int ,int ,int ,int ,int *,int *,int *,struct tipc_link**) ;
 struct tipc_net* tipc_net (struct net*) ;

int tipc_bcast_init(struct net *net)
{
 struct tipc_net *tn = tipc_net(net);
 struct tipc_bc_base *bb = ((void*)0);
 struct tipc_link *l = ((void*)0);

 bb = kzalloc(sizeof(*bb), GFP_KERNEL);
 if (!bb)
  goto enomem;
 tn->bcbase = bb;
 spin_lock_init(&tipc_net(net)->bclock);

 if (!tipc_link_bc_create(net, 0, 0,
     FB_MTU,
     BCLINK_WIN_DEFAULT,
     0,
     &bb->inputq,
     ((void*)0),
     ((void*)0),
     &l))
  goto enomem;
 bb->link = l;
 tn->bcl = l;
 bb->rc_ratio = 10;
 bb->rcast_support = 1;
 return 0;
enomem:
 kfree(bb);
 kfree(l);
 return -ENOMEM;
}
