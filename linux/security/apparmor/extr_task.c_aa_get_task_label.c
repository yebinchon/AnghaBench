
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct aa_label {int dummy; } ;


 int __aa_task_raw_label (struct task_struct*) ;
 struct aa_label* aa_get_newest_label (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct aa_label *aa_get_task_label(struct task_struct *task)
{
 struct aa_label *p;

 rcu_read_lock();
 p = aa_get_newest_label(__aa_task_raw_label(task));
 rcu_read_unlock();

 return p;
}
