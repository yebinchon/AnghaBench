
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct aa_label {int dummy; } ;


 int __task_cred (struct task_struct*) ;
 struct aa_label* aa_cred_raw_label (int ) ;

__attribute__((used)) static inline struct aa_label *__aa_task_raw_label(struct task_struct *task)
{
 return aa_cred_raw_label(__task_cred(task));
}
