
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; scalar_t__ sk_reuseport; } ;
struct inet_listen_hashbucket {int lock; int count; int head; } ;
struct inet_hashinfo {int lhash2; } ;
struct TYPE_2__ {int icsk_listen_portaddr_node; } ;


 scalar_t__ AF_INET6 ;
 int hlist_add_head_rcu (int *,int *) ;
 int hlist_add_tail_rcu (int *,int *) ;
 TYPE_1__* inet_csk (struct sock*) ;
 struct inet_listen_hashbucket* inet_lhash2_bucket_sk (struct inet_hashinfo*,struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void inet_hash2(struct inet_hashinfo *h, struct sock *sk)
{
 struct inet_listen_hashbucket *ilb2;

 if (!h->lhash2)
  return;

 ilb2 = inet_lhash2_bucket_sk(h, sk);

 spin_lock(&ilb2->lock);
 if (sk->sk_reuseport && sk->sk_family == AF_INET6)
  hlist_add_tail_rcu(&inet_csk(sk)->icsk_listen_portaddr_node,
       &ilb2->head);
 else
  hlist_add_head_rcu(&inet_csk(sk)->icsk_listen_portaddr_node,
       &ilb2->head);
 ilb2->count++;
 spin_unlock(&ilb2->lock);
}
