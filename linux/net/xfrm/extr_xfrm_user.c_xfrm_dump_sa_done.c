
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state_walk {int dummy; } ;
struct sock {int dummy; } ;
struct netlink_callback {scalar_t__* args; TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sock* sk; } ;


 struct net* sock_net (struct sock*) ;
 int xfrm_state_walk_done (struct xfrm_state_walk*,struct net*) ;

__attribute__((used)) static int xfrm_dump_sa_done(struct netlink_callback *cb)
{
 struct xfrm_state_walk *walk = (struct xfrm_state_walk *) &cb->args[1];
 struct sock *sk = cb->skb->sk;
 struct net *net = sock_net(sk);

 if (cb->args[0])
  xfrm_state_walk_done(walk, net);
 return 0;
}
