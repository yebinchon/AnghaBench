
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfkill_sched_op { ____Placeholder_rfkill_sched_op } rfkill_sched_op ;


 int RFKILL_GLOBAL_OP_EPO ;
 int jiffies ;
 int mod_delayed_work (int ,int *,int ) ;
 int rfkill_is_epo_lock_active () ;
 int rfkill_last_scheduled ;
 int rfkill_op ;
 int rfkill_op_lock ;
 int rfkill_op_pending ;
 int rfkill_op_work ;
 int rfkill_schedule_ratelimited () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_wq ;

__attribute__((used)) static void rfkill_schedule_global_op(enum rfkill_sched_op op)
{
 unsigned long flags;

 spin_lock_irqsave(&rfkill_op_lock, flags);
 rfkill_op = op;
 rfkill_op_pending = 1;
 if (op == RFKILL_GLOBAL_OP_EPO && !rfkill_is_epo_lock_active()) {

  mod_delayed_work(system_wq, &rfkill_op_work, 0);
  rfkill_last_scheduled = jiffies;
 } else
  rfkill_schedule_ratelimited();
 spin_unlock_irqrestore(&rfkill_op_lock, flags);
}
