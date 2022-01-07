
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct pfkey_sock {TYPE_2__ dump; int sk; } ;
struct net {int dummy; } ;


 struct net* sock_net (int *) ;
 int xfrm_state_walk_done (int *,struct net*) ;

__attribute__((used)) static void pfkey_dump_sa_done(struct pfkey_sock *pfk)
{
 struct net *net = sock_net(&pfk->sk);

 xfrm_state_walk_done(&pfk->dump.u.state, net);
}
