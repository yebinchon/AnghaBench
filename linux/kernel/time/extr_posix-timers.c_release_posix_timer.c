
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int rcu; int sigq; int it_pid; int t_hash; } ;


 int call_rcu (int *,int ) ;
 int hash_lock ;
 int hlist_del_rcu (int *) ;
 int k_itimer_rcu_free ;
 int put_pid (int ) ;
 int sigqueue_free (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void release_posix_timer(struct k_itimer *tmr, int it_id_set)
{
 if (it_id_set) {
  unsigned long flags;
  spin_lock_irqsave(&hash_lock, flags);
  hlist_del_rcu(&tmr->t_hash);
  spin_unlock_irqrestore(&hash_lock, flags);
 }
 put_pid(tmr->it_pid);
 sigqueue_free(tmr->sigq);
 call_rcu(&tmr->rcu, k_itimer_rcu_free);
}
