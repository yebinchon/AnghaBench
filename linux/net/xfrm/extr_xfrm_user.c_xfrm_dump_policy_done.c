
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy_walk {int dummy; } ;
struct netlink_callback {TYPE_1__* skb; scalar_t__ args; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int sk; } ;


 struct net* sock_net (int ) ;
 int xfrm_policy_walk_done (struct xfrm_policy_walk*,struct net*) ;

__attribute__((used)) static int xfrm_dump_policy_done(struct netlink_callback *cb)
{
 struct xfrm_policy_walk *walk = (struct xfrm_policy_walk *)cb->args;
 struct net *net = sock_net(cb->skb->sk);

 xfrm_policy_walk_done(walk, net);
 return 0;
}
