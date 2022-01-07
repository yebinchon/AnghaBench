
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_refcnt; } ;
struct tipc_sock {int node; struct sock sk; } ;
struct tipc_net {int sk_rht; } ;


 int WARN_ON (int) ;
 int __sock_put (struct sock*) ;
 struct tipc_net* net_generic (int ,int ) ;
 int refcount_read (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int sock_net (struct sock*) ;
 int tipc_net_id ;
 int tsk_rht_params ;

__attribute__((used)) static void tipc_sk_remove(struct tipc_sock *tsk)
{
 struct sock *sk = &tsk->sk;
 struct tipc_net *tn = net_generic(sock_net(sk), tipc_net_id);

 if (!rhashtable_remove_fast(&tn->sk_rht, &tsk->node, tsk_rht_params)) {
  WARN_ON(refcount_read(&sk->sk_refcnt) == 1);
  __sock_put(sk);
 }
}
