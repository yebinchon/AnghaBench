
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcu_struct {TYPE_1__* sda; int srcu_idx; } ;
struct TYPE_2__ {int * srcu_lock_count; } ;


 int READ_ONCE (int ) ;
 int smp_mb () ;
 int this_cpu_inc (int ) ;

int __srcu_read_lock(struct srcu_struct *ssp)
{
 int idx;

 idx = READ_ONCE(ssp->srcu_idx) & 0x1;
 this_cpu_inc(ssp->sda->srcu_lock_count[idx]);
 smp_mb();
 return idx;
}
