
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * kdb_current_regs ;
 int * kdb_current_task ;
 int kdb_initial_cpu ;

int kdb_common_deinit_state(void)
{
 kdb_initial_cpu = -1;
 kdb_current_task = ((void*)0);
 kdb_current_regs = ((void*)0);
 return 0;
}
