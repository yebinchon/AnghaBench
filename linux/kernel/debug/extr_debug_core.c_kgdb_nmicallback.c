
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgdb_state {int cpu; void* linux_regs; } ;
struct TYPE_2__ {int rounding_up; scalar_t__ enter_kgdb; } ;


 int DCPU_IS_SLAVE ;
 int dbg_master_lock ;
 int kgdb_cpu_enter (struct kgdb_state*,void*,int ) ;
 TYPE_1__* kgdb_info ;
 int memset (struct kgdb_state*,int ,int) ;
 scalar_t__ raw_spin_is_locked (int *) ;

int kgdb_nmicallback(int cpu, void *regs)
{
 return 1;
}
