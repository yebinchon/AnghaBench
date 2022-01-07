
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int sk_rx_dst; int sk_dst_cache; int sk_forward_alloc; int sk_wmem_queued; int sk_wmem_alloc; int sk_rmem_alloc; int sk_error_queue; int * sk_rx_skb_cache; int sk_receive_queue; } ;
struct inet_sock {int inet_opt; } ;


 int SOCK_DEAD ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 int WARN_ON (int ) ;
 int __kfree_skb (int *) ;
 int __skb_queue_purge (int *) ;
 int atomic_read (int *) ;
 int dst_release (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int kfree (int ) ;
 int pr_err (char*,struct sock*,...) ;
 int rcu_dereference_protected (int ,int) ;
 int refcount_read (int *) ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_refcnt_debug_dec (struct sock*) ;
 int sock_flag (struct sock*,int ) ;

void inet_sock_destruct(struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);

 __skb_queue_purge(&sk->sk_receive_queue);
 if (sk->sk_rx_skb_cache) {
  __kfree_skb(sk->sk_rx_skb_cache);
  sk->sk_rx_skb_cache = ((void*)0);
 }
 __skb_queue_purge(&sk->sk_error_queue);

 sk_mem_reclaim(sk);

 if (sk->sk_type == SOCK_STREAM && sk->sk_state != TCP_CLOSE) {
  pr_err("Attempt to release TCP socket in state %d %p\n",
         sk->sk_state, sk);
  return;
 }
 if (!sock_flag(sk, SOCK_DEAD)) {
  pr_err("Attempt to release alive inet socket %p\n", sk);
  return;
 }

 WARN_ON(atomic_read(&sk->sk_rmem_alloc));
 WARN_ON(refcount_read(&sk->sk_wmem_alloc));
 WARN_ON(sk->sk_wmem_queued);
 WARN_ON(sk->sk_forward_alloc);

 kfree(rcu_dereference_protected(inet->inet_opt, 1));
 dst_release(rcu_dereference_protected(sk->sk_dst_cache, 1));
 dst_release(sk->sk_rx_dst);
 sk_refcnt_debug_dec(sk);
}
