
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEFINE_SPINLOCK ;


 scalar_t__ AUDIT_FAIL_PANIC ;
 unsigned long HZ ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int audit_backlog_limit ;
 scalar_t__ audit_failure ;
 int audit_lost ;
 int audit_panic (char const*) ;
 int audit_rate_limit ;
 unsigned long jiffies ;
 int pr_warn (char*,int ,int ,int ) ;
 scalar_t__ printk_ratelimit () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void audit_log_lost(const char *message)
{
 static unsigned long last_msg = 0;
 static DEFINE_SPINLOCK(lock);
 unsigned long flags;
 unsigned long now;
 int print;

 atomic_inc(&audit_lost);

 print = (audit_failure == AUDIT_FAIL_PANIC || !audit_rate_limit);

 if (!print) {
  spin_lock_irqsave(&lock, flags);
  now = jiffies;
  if (now - last_msg > HZ) {
   print = 1;
   last_msg = now;
  }
  spin_unlock_irqrestore(&lock, flags);
 }

 if (print) {
  if (printk_ratelimit())
   pr_warn("audit_lost=%u audit_rate_limit=%u audit_backlog_limit=%u\n",
    atomic_read(&audit_lost),
    audit_rate_limit,
    audit_backlog_limit);
  audit_panic(message);
 }
}
