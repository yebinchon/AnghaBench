
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {struct task_struct* p; } ;
struct TYPE_3__ {int flags; } ;


 scalar_t__ KDB_TSK (int) ;
 int _TIF_MCA_INIT ;
 struct task_struct* curr_task (int) ;
 TYPE_2__* krp ;
 TYPE_1__* task_thread_info (struct task_struct*) ;

struct task_struct *kdb_curr_task(int cpu)
{
 struct task_struct *p = curr_task(cpu);




 return p;
}
