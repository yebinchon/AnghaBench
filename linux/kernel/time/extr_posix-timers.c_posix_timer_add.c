
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct signal_struct {int posix_timer_id; } ;
struct k_itimer {int t_hash; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {struct signal_struct* signal; } ;


 int EAGAIN ;
 int ENOENT ;
 int __posix_timers_find (struct hlist_head*,struct signal_struct*,int) ;
 TYPE_1__* current ;
 size_t hash (struct signal_struct*,int) ;
 int hash_lock ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct hlist_head* posix_timers_hashtable ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int posix_timer_add(struct k_itimer *timer)
{
 struct signal_struct *sig = current->signal;
 int first_free_id = sig->posix_timer_id;
 struct hlist_head *head;
 int ret = -ENOENT;

 do {
  spin_lock(&hash_lock);
  head = &posix_timers_hashtable[hash(sig, sig->posix_timer_id)];
  if (!__posix_timers_find(head, sig, sig->posix_timer_id)) {
   hlist_add_head_rcu(&timer->t_hash, head);
   ret = sig->posix_timer_id;
  }
  if (++sig->posix_timer_id < 0)
   sig->posix_timer_id = 0;
  if ((sig->posix_timer_id == first_free_id) && (ret == -ENOENT))

   ret = -EAGAIN;
  spin_unlock(&hash_lock);
 } while (ret == -ENOENT);
 return ret;
}
