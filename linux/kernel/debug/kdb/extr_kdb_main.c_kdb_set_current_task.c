
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int * KDB_TSKREGS (int ) ;
 int * kdb_current_regs ;
 struct task_struct* kdb_current_task ;
 int kdb_process_cpu (struct task_struct*) ;
 scalar_t__ kdb_task_has_cpu (struct task_struct*) ;

void kdb_set_current_task(struct task_struct *p)
{
 kdb_current_task = p;

 if (kdb_task_has_cpu(p)) {
  kdb_current_regs = KDB_TSKREGS(kdb_process_cpu(p));
  return;
 }
 kdb_current_regs = ((void*)0);
}
