
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_file {unsigned long notified_at; scalar_t__ kn; int notify_timer; } ;


 unsigned long CGROUP_FILE_NOTIFY_MIN_INTV ;
 int cgroup_file_kn_lock ;
 unsigned long jiffies ;
 int kernfs_notify (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_in_range (unsigned long,unsigned long,unsigned long) ;
 int timer_reduce (int *,unsigned long) ;

void cgroup_file_notify(struct cgroup_file *cfile)
{
 unsigned long flags;

 spin_lock_irqsave(&cgroup_file_kn_lock, flags);
 if (cfile->kn) {
  unsigned long last = cfile->notified_at;
  unsigned long next = last + CGROUP_FILE_NOTIFY_MIN_INTV;

  if (time_in_range(jiffies, last, next)) {
   timer_reduce(&cfile->notify_timer, next);
  } else {
   kernfs_notify(cfile->kn);
   cfile->notified_at = jiffies;
  }
 }
 spin_unlock_irqrestore(&cgroup_file_kn_lock, flags);
}
