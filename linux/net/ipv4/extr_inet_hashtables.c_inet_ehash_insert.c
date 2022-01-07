
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_hash; TYPE_2__* sk_prot; } ;
struct inet_hashinfo {int dummy; } ;
struct hlist_nulls_head {int dummy; } ;
struct inet_ehash_bucket {struct hlist_nulls_head chain; } ;
typedef int spinlock_t ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;


 int WARN_ON_ONCE (int) ;
 int __sk_nulls_add_node_rcu (struct sock*,struct hlist_nulls_head*) ;
 struct inet_ehash_bucket* inet_ehash_bucket (struct inet_hashinfo*,int ) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,int ) ;
 int sk_ehashfn (struct sock*) ;
 int sk_nulls_del_node_init_rcu (struct sock*) ;
 int sk_unhashed (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool inet_ehash_insert(struct sock *sk, struct sock *osk)
{
 struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
 struct hlist_nulls_head *list;
 struct inet_ehash_bucket *head;
 spinlock_t *lock;
 bool ret = 1;

 WARN_ON_ONCE(!sk_unhashed(sk));

 sk->sk_hash = sk_ehashfn(sk);
 head = inet_ehash_bucket(hashinfo, sk->sk_hash);
 list = &head->chain;
 lock = inet_ehash_lockp(hashinfo, sk->sk_hash);

 spin_lock(lock);
 if (osk) {
  WARN_ON_ONCE(sk->sk_hash != osk->sk_hash);
  ret = sk_nulls_del_node_init_rcu(osk);
 }
 if (ret)
  __sk_nulls_add_node_rcu(sk, list);
 spin_unlock(lock);
 return ret;
}
