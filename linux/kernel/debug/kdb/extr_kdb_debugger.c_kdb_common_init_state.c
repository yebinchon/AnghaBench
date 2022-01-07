
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgdb_state {size_t cpu; } ;
struct TYPE_2__ {int debuggerinfo; int task; } ;


 int atomic_read (int *) ;
 int kdb_current_regs ;
 int kdb_current_task ;
 int kdb_initial_cpu ;
 int kgdb_active ;
 TYPE_1__* kgdb_info ;

int kdb_common_init_state(struct kgdb_state *ks)
{
 kdb_initial_cpu = atomic_read(&kgdb_active);
 kdb_current_task = kgdb_info[ks->cpu].task;
 kdb_current_regs = kgdb_info[ks->cpu].debuggerinfo;
 return 0;
}
