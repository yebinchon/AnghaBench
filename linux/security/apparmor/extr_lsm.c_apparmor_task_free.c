
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int aa_free_task_ctx (int ) ;
 int task_ctx (struct task_struct*) ;

__attribute__((used)) static void apparmor_task_free(struct task_struct *task)
{

 aa_free_task_ctx(task_ctx(task));
}
