
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mr_table {int mfc_unres_queue; int ipmr_expire_timer; } ;


 struct mr_table* from_timer (int ,struct timer_list*,int ) ;
 int ipmr_do_expire_process (struct mr_table*) ;
 int ipmr_expire_timer ;
 scalar_t__ jiffies ;
 int list_empty (int *) ;
 int mfc_unres_lock ;
 int mod_timer (int *,scalar_t__) ;
 struct mr_table* mrt ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipmr_expire_process(struct timer_list *t)
{
 struct mr_table *mrt = from_timer(mrt, t, ipmr_expire_timer);

 if (!spin_trylock(&mfc_unres_lock)) {
  mod_timer(&mrt->ipmr_expire_timer, jiffies + 1);
  return;
 }

 if (!list_empty(&mrt->mfc_unres_queue))
  ipmr_do_expire_process(mrt);

 spin_unlock(&mfc_unres_lock);
}
