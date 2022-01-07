
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_prot; int sk_hash; } ;
struct inet_timewait_sock {int tw_refcnt; TYPE_1__* tw_tb; } ;
struct inet_sock {int inet_num; } ;
struct inet_hashinfo {int bhash_size; struct inet_bind_hashbucket* bhash; } ;
struct inet_ehash_bucket {int chain; } ;
struct inet_connection_sock {TYPE_1__* icsk_bind_hash; } ;
struct inet_bind_hashbucket {int lock; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int owners; } ;


 int WARN_ON (int) ;
 scalar_t__ __sk_nulls_del_node_init_rcu (struct sock*) ;
 size_t inet_bhashfn (int ,int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct inet_ehash_bucket* inet_ehash_bucket (struct inet_hashinfo*,int ) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_twsk_add_bind_node (struct inet_timewait_sock*,int *) ;
 int inet_twsk_add_node_rcu (struct inet_timewait_sock*,int *) ;
 int refcount_set (int *,int) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int twsk_net (struct inet_timewait_sock*) ;

void inet_twsk_hashdance(struct inet_timewait_sock *tw, struct sock *sk,
      struct inet_hashinfo *hashinfo)
{
 const struct inet_sock *inet = inet_sk(sk);
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct inet_ehash_bucket *ehead = inet_ehash_bucket(hashinfo, sk->sk_hash);
 spinlock_t *lock = inet_ehash_lockp(hashinfo, sk->sk_hash);
 struct inet_bind_hashbucket *bhead;




 bhead = &hashinfo->bhash[inet_bhashfn(twsk_net(tw), inet->inet_num,
   hashinfo->bhash_size)];
 spin_lock(&bhead->lock);
 tw->tw_tb = icsk->icsk_bind_hash;
 WARN_ON(!icsk->icsk_bind_hash);
 inet_twsk_add_bind_node(tw, &tw->tw_tb->owners);
 spin_unlock(&bhead->lock);

 spin_lock(lock);

 inet_twsk_add_node_rcu(tw, &ehead->chain);


 if (__sk_nulls_del_node_init_rcu(sk))
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);

 spin_unlock(lock);
 refcount_set(&tw->tw_refcnt, 3);
}
