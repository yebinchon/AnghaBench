
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int membarrier_state; } ;
struct TYPE_2__ {int membarrier_state; } ;


 int atomic_set (int *,int ) ;
 TYPE_1__ runqueues ;
 int smp_mb () ;
 int this_cpu_write (int ,int ) ;

void membarrier_exec_mmap(struct mm_struct *mm)
{





 smp_mb();
 atomic_set(&mm->membarrier_state, 0);




 this_cpu_write(runqueues.membarrier_state, 0);
}
