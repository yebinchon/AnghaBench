
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int d_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int ,int *) ;
 int current ;
 scalar_t__ d_in_lookup (struct dentry*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static void d_wait_lookup(struct dentry *dentry)
{
 if (d_in_lookup(dentry)) {
  DECLARE_WAITQUEUE(wait, current);
  add_wait_queue(dentry->d_wait, &wait);
  do {
   set_current_state(TASK_UNINTERRUPTIBLE);
   spin_unlock(&dentry->d_lock);
   schedule();
   spin_lock(&dentry->d_lock);
  } while (d_in_lookup(dentry));
 }
}
