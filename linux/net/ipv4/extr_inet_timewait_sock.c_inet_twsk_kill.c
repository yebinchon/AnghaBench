
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_timewait_sock {TYPE_1__* tw_dr; int tw_num; int tw_hash; } ;
struct inet_hashinfo {int bhash_size; struct inet_bind_hashbucket* bhash; } ;
struct inet_bind_hashbucket {int lock; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int tw_count; struct inet_hashinfo* hashinfo; } ;


 int atomic_dec (int *) ;
 size_t inet_bhashfn (int ,int ,int ) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,int ) ;
 int inet_twsk_bind_unhash (struct inet_timewait_sock*,struct inet_hashinfo*) ;
 int inet_twsk_put (struct inet_timewait_sock*) ;
 int sk_nulls_del_node_init_rcu (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int twsk_net (struct inet_timewait_sock*) ;

__attribute__((used)) static void inet_twsk_kill(struct inet_timewait_sock *tw)
{
 struct inet_hashinfo *hashinfo = tw->tw_dr->hashinfo;
 spinlock_t *lock = inet_ehash_lockp(hashinfo, tw->tw_hash);
 struct inet_bind_hashbucket *bhead;

 spin_lock(lock);
 sk_nulls_del_node_init_rcu((struct sock *)tw);
 spin_unlock(lock);


 bhead = &hashinfo->bhash[inet_bhashfn(twsk_net(tw), tw->tw_num,
   hashinfo->bhash_size)];

 spin_lock(&bhead->lock);
 inet_twsk_bind_unhash(tw, hashinfo);
 spin_unlock(&bhead->lock);

 atomic_dec(&tw->tw_dr->tw_count);
 inet_twsk_put(tw);
}
