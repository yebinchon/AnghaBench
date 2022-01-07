
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rlimit {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_label* __begin_current_label_crit_section () ;
 int __end_current_label_crit_section (struct aa_label*) ;
 int aa_task_setrlimit (struct aa_label*,struct task_struct*,unsigned int,struct rlimit*) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_task_setrlimit(struct task_struct *task,
  unsigned int resource, struct rlimit *new_rlim)
{
 struct aa_label *label = __begin_current_label_crit_section();
 int error = 0;

 if (!unconfined(label))
  error = aa_task_setrlimit(label, task, resource, new_rlim);
 __end_current_label_crit_section(label);

 return error;
}
