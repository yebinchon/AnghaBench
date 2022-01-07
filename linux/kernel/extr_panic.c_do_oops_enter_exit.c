
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSEC_PER_SEC ;
 int pause_on_oops ;
 int pause_on_oops_flag ;
 int pause_on_oops_lock ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_msec (int) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void do_oops_enter_exit(void)
{
 unsigned long flags;
 static int spin_counter;

 if (!pause_on_oops)
  return;

 spin_lock_irqsave(&pause_on_oops_lock, flags);
 if (pause_on_oops_flag == 0) {

  pause_on_oops_flag = 1;
 } else {

  if (!spin_counter) {

   spin_counter = pause_on_oops;
   do {
    spin_unlock(&pause_on_oops_lock);
    spin_msec(MSEC_PER_SEC);
    spin_lock(&pause_on_oops_lock);
   } while (--spin_counter);
   pause_on_oops_flag = 0;
  } else {

   while (spin_counter) {
    spin_unlock(&pause_on_oops_lock);
    spin_msec(1);
    spin_lock(&pause_on_oops_lock);
   }
  }
 }
 spin_unlock_irqrestore(&pause_on_oops_lock, flags);
}
