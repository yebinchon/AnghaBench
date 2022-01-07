
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgdb_state {int cpu; int ex_vector; int err_code; int * send_ready; void* linux_regs; int signo; } ;
typedef int atomic_t ;
struct TYPE_2__ {scalar_t__ enter_kgdb; } ;


 int DCPU_WANT_MASTER ;
 int SIGTRAP ;
 int kgdb_cpu_enter (struct kgdb_state*,void*,int ) ;
 TYPE_1__* kgdb_info ;
 int kgdb_io_ready (int ) ;
 int memset (struct kgdb_state*,int ,int) ;

int kgdb_nmicallin(int cpu, int trapnr, void *regs, int err_code,
       atomic_t *send_ready)
{
 return 1;
}
