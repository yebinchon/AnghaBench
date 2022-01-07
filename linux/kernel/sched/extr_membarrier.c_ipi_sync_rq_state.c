
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int membarrier_state; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int membarrier_state; } ;


 int atomic_read (int *) ;
 TYPE_2__* current ;
 TYPE_1__ runqueues ;
 int smp_mb () ;
 int this_cpu_write (int ,int ) ;

__attribute__((used)) static void ipi_sync_rq_state(void *info)
{
 struct mm_struct *mm = (struct mm_struct *) info;

 if (current->mm != mm)
  return;
 this_cpu_write(runqueues.membarrier_state,
         atomic_read(&mm->membarrier_state));






 smp_mb();
}
