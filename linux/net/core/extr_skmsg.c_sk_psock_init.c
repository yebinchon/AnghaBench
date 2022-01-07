
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_psock {int refcnt; int ingress_skb; int ingress_msg; int work; int link_lock; int link; int eval; struct sock* sk; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SK_PSOCK_TX_ENABLED ;
 int __GFP_NOWARN ;
 int __SK_NONE ;
 struct sk_psock* kzalloc_node (int,int,int) ;
 int rcu_assign_sk_user_data (struct sock*,struct sk_psock*) ;
 int refcount_set (int *,int) ;
 int sk_psock_backlog ;
 int sk_psock_set_state (struct sk_psock*,int ) ;
 int skb_queue_head_init (int *) ;
 int sock_hold (struct sock*) ;
 int spin_lock_init (int *) ;

struct sk_psock *sk_psock_init(struct sock *sk, int node)
{
 struct sk_psock *psock = kzalloc_node(sizeof(*psock),
           GFP_ATOMIC | __GFP_NOWARN,
           node);
 if (!psock)
  return ((void*)0);

 psock->sk = sk;
 psock->eval = __SK_NONE;

 INIT_LIST_HEAD(&psock->link);
 spin_lock_init(&psock->link_lock);

 INIT_WORK(&psock->work, sk_psock_backlog);
 INIT_LIST_HEAD(&psock->ingress_msg);
 skb_queue_head_init(&psock->ingress_skb);

 sk_psock_set_state(psock, SK_PSOCK_TX_ENABLED);
 refcount_set(&psock->refcnt, 1);

 rcu_assign_sk_user_data(sk, psock);
 sock_hold(sk);

 return psock;
}
