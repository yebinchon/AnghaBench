
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct tipc_sock {struct sock sk; int node; scalar_t__ portid; } ;
struct tipc_net {int sk_rht; } ;
struct net {int dummy; } ;


 scalar_t__ TIPC_MAX_PORT ;
 scalar_t__ TIPC_MIN_PORT ;
 struct tipc_net* net_generic (struct net*,int ) ;
 scalar_t__ prandom_u32 () ;
 int rhashtable_lookup_insert_fast (int *,int *,int ) ;
 int sock_hold (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 int tipc_net_id ;
 int tsk_rht_params ;

__attribute__((used)) static int tipc_sk_insert(struct tipc_sock *tsk)
{
 struct sock *sk = &tsk->sk;
 struct net *net = sock_net(sk);
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 u32 remaining = (TIPC_MAX_PORT - TIPC_MIN_PORT) + 1;
 u32 portid = prandom_u32() % remaining + TIPC_MIN_PORT;

 while (remaining--) {
  portid++;
  if ((portid < TIPC_MIN_PORT) || (portid > TIPC_MAX_PORT))
   portid = TIPC_MIN_PORT;
  tsk->portid = portid;
  sock_hold(&tsk->sk);
  if (!rhashtable_lookup_insert_fast(&tn->sk_rht, &tsk->node,
         tsk_rht_params))
   return 0;
  sock_put(&tsk->sk);
 }

 return -1;
}
