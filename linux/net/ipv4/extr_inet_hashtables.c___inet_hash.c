
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; scalar_t__ sk_family; TYPE_2__* sk_prot; int sk_node; scalar_t__ sk_reuseport; } ;
struct inet_listen_hashbucket {int lock; int count; int head; } ;
struct inet_hashinfo {struct inet_listen_hashbucket* listening_hash; } ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;


 scalar_t__ AF_INET6 ;
 int CONFIG_IPV6 ;
 scalar_t__ IS_ENABLED (int ) ;
 int SOCK_RCU_FREE ;
 scalar_t__ TCP_LISTEN ;
 int WARN_ON (int) ;
 int hlist_add_head_rcu (int *,int *) ;
 int hlist_add_tail_rcu (int *,int *) ;
 int inet_ehash_nolisten (struct sock*,struct sock*) ;
 int inet_hash2 (struct inet_hashinfo*,struct sock*) ;
 int inet_reuseport_add_sock (struct sock*,struct inet_listen_hashbucket*) ;
 size_t inet_sk_listen_hashfn (struct sock*) ;
 int sk_unhashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int sock_set_flag (struct sock*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __inet_hash(struct sock *sk, struct sock *osk)
{
 struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
 struct inet_listen_hashbucket *ilb;
 int err = 0;

 if (sk->sk_state != TCP_LISTEN) {
  inet_ehash_nolisten(sk, osk);
  return 0;
 }
 WARN_ON(!sk_unhashed(sk));
 ilb = &hashinfo->listening_hash[inet_sk_listen_hashfn(sk)];

 spin_lock(&ilb->lock);
 if (sk->sk_reuseport) {
  err = inet_reuseport_add_sock(sk, ilb);
  if (err)
   goto unlock;
 }
 if (IS_ENABLED(CONFIG_IPV6) && sk->sk_reuseport &&
  sk->sk_family == AF_INET6)
  hlist_add_tail_rcu(&sk->sk_node, &ilb->head);
 else
  hlist_add_head_rcu(&sk->sk_node, &ilb->head);
 inet_hash2(hashinfo, sk);
 ilb->count++;
 sock_set_flag(sk, SOCK_RCU_FREE);
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
unlock:
 spin_unlock(&ilb->lock);

 return err;
}
