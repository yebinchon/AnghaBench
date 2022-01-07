
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_sock {int rsk_timer; int rsk_hash; } ;
struct inet_hashinfo {int dummy; } ;
typedef int spinlock_t ;
struct TYPE_8__ {TYPE_2__* sk_prot; } ;
struct TYPE_6__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_7__ {TYPE_1__ h; } ;


 int __sk_nulls_del_node_init_rcu (TYPE_3__*) ;
 scalar_t__ del_timer_sync (int *) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,int ) ;
 TYPE_3__* req_to_sk (struct request_sock*) ;
 int reqsk_put (struct request_sock*) ;
 scalar_t__ sk_hashed (TYPE_3__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static bool reqsk_queue_unlink(struct request_sock *req)
{
 struct inet_hashinfo *hashinfo = req_to_sk(req)->sk_prot->h.hashinfo;
 bool found = 0;

 if (sk_hashed(req_to_sk(req))) {
  spinlock_t *lock = inet_ehash_lockp(hashinfo, req->rsk_hash);

  spin_lock(lock);
  found = __sk_nulls_del_node_init_rcu(req_to_sk(req));
  spin_unlock(lock);
 }
 if (timer_pending(&req->rsk_timer) && del_timer_sync(&req->rsk_timer))
  reqsk_put(req);
 return found;
}
