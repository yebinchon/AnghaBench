
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_rmb () ;

__attribute__((used)) static void ftrace_sync_ipi(void *data)
{

 smp_rmb();
}
