
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcu_struct {TYPE_1__* sda; } ;
struct TYPE_2__ {int * srcu_unlock_count; } ;


 int smp_mb () ;
 int this_cpu_inc (int ) ;

void __srcu_read_unlock(struct srcu_struct *ssp, int idx)
{
 smp_mb();
 this_cpu_inc(ssp->sda->srcu_unlock_count[idx]);
}
