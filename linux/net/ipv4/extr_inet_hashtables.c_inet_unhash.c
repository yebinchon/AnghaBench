
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; TYPE_2__* sk_prot; int sk_reuseport_cb; int sk_hash; } ;
struct inet_listen_hashbucket {int count; int lock; } ;
struct inet_hashinfo {struct inet_listen_hashbucket* listening_hash; } ;
typedef int spinlock_t ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;


 scalar_t__ TCP_LISTEN ;
 int __sk_del_node_init (struct sock*) ;
 int __sk_nulls_del_node_init_rcu (struct sock*) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,int ) ;
 size_t inet_sk_listen_hashfn (struct sock*) ;
 int inet_unhash2 (struct inet_hashinfo*,struct sock*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int reuseport_detach_sock (struct sock*) ;
 scalar_t__ sk_unhashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void inet_unhash(struct sock *sk)
{
 struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
 struct inet_listen_hashbucket *ilb = ((void*)0);
 spinlock_t *lock;

 if (sk_unhashed(sk))
  return;

 if (sk->sk_state == TCP_LISTEN) {
  ilb = &hashinfo->listening_hash[inet_sk_listen_hashfn(sk)];
  lock = &ilb->lock;
 } else {
  lock = inet_ehash_lockp(hashinfo, sk->sk_hash);
 }
 spin_lock_bh(lock);
 if (sk_unhashed(sk))
  goto unlock;

 if (rcu_access_pointer(sk->sk_reuseport_cb))
  reuseport_detach_sock(sk);
 if (ilb) {
  inet_unhash2(hashinfo, sk);
   __sk_del_node_init(sk);
   ilb->count--;
 } else {
  __sk_nulls_del_node_init_rcu(sk);
 }
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
unlock:
 spin_unlock_bh(lock);
}
