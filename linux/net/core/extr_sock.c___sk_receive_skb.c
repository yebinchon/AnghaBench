
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dep_map; } ;
struct sock {int sk_drops; int sk_rcvbuf; TYPE_1__ sk_lock; } ;
struct sk_buff {int * dev; } ;


 int NET_RX_SUCCESS ;
 int READ_ONCE (int ) ;
 int _RET_IP_ ;
 int atomic_inc (int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_lock_sock_nested (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_acquire (int *,int ,int,int ) ;
 int mutex_release (int *,int,int ) ;
 scalar_t__ sk_add_backlog (struct sock*,struct sk_buff*,int ) ;
 int sk_backlog_rcv (struct sock*,struct sk_buff*) ;
 scalar_t__ sk_filter_trim_cap (struct sock*,struct sk_buff*,unsigned int) ;
 scalar_t__ sk_rcvqueues_full (struct sock*,int ) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;

int __sk_receive_skb(struct sock *sk, struct sk_buff *skb,
       const int nested, unsigned int trim_cap, bool refcounted)
{
 int rc = NET_RX_SUCCESS;

 if (sk_filter_trim_cap(sk, skb, trim_cap))
  goto discard_and_relse;

 skb->dev = ((void*)0);

 if (sk_rcvqueues_full(sk, sk->sk_rcvbuf)) {
  atomic_inc(&sk->sk_drops);
  goto discard_and_relse;
 }
 if (nested)
  bh_lock_sock_nested(sk);
 else
  bh_lock_sock(sk);
 if (!sock_owned_by_user(sk)) {



  mutex_acquire(&sk->sk_lock.dep_map, 0, 1, _RET_IP_);

  rc = sk_backlog_rcv(sk, skb);

  mutex_release(&sk->sk_lock.dep_map, 1, _RET_IP_);
 } else if (sk_add_backlog(sk, skb, READ_ONCE(sk->sk_rcvbuf))) {
  bh_unlock_sock(sk);
  atomic_inc(&sk->sk_drops);
  goto discard_and_relse;
 }

 bh_unlock_sock(sk);
out:
 if (refcounted)
  sock_put(sk);
 return rc;
discard_and_relse:
 kfree_skb(skb);
 goto out;
}
