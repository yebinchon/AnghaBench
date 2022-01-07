
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int yama_ptracer_del (struct task_struct*,struct task_struct*) ;

__attribute__((used)) static void yama_task_free(struct task_struct *task)
{
 yama_ptracer_del(task, task);
}
