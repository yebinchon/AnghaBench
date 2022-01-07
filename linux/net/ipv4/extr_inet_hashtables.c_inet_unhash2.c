
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_listen_hashbucket {int lock; int count; } ;
struct inet_hashinfo {int lhash2; } ;
struct TYPE_2__ {int icsk_listen_portaddr_node; } ;


 scalar_t__ WARN_ON_ONCE (int ) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_unhashed (int *) ;
 TYPE_1__* inet_csk (struct sock*) ;
 struct inet_listen_hashbucket* inet_lhash2_bucket_sk (struct inet_hashinfo*,struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void inet_unhash2(struct inet_hashinfo *h, struct sock *sk)
{
 struct inet_listen_hashbucket *ilb2;

 if (!h->lhash2 ||
     WARN_ON_ONCE(hlist_unhashed(&inet_csk(sk)->icsk_listen_portaddr_node)))
  return;

 ilb2 = inet_lhash2_bucket_sk(h, sk);

 spin_lock(&ilb2->lock);
 hlist_del_init_rcu(&inet_csk(sk)->icsk_listen_portaddr_node);
 ilb2->count--;
 spin_unlock(&ilb2->lock);
}
