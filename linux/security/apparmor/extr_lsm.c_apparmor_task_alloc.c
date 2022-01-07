
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct aa_task_ctx {int dummy; } ;


 int aa_dup_task_ctx (struct aa_task_ctx*,struct aa_task_ctx*) ;
 struct task_struct* current ;
 struct aa_task_ctx* task_ctx (struct task_struct*) ;

__attribute__((used)) static int apparmor_task_alloc(struct task_struct *task,
          unsigned long clone_flags)
{
 struct aa_task_ctx *new = task_ctx(task);

 aa_dup_task_ctx(new, task_ctx(current));

 return 0;
}
