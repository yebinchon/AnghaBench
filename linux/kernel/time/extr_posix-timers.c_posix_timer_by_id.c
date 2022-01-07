
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timer_t ;
struct signal_struct {int dummy; } ;
struct k_itimer {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {struct signal_struct* signal; } ;


 struct k_itimer* __posix_timers_find (struct hlist_head*,struct signal_struct*,int ) ;
 TYPE_1__* current ;
 size_t hash (struct signal_struct*,int ) ;
 struct hlist_head* posix_timers_hashtable ;

__attribute__((used)) static struct k_itimer *posix_timer_by_id(timer_t id)
{
 struct signal_struct *sig = current->signal;
 struct hlist_head *head = &posix_timers_hashtable[hash(sig, id)];

 return __posix_timers_find(head, sig, id);
}
