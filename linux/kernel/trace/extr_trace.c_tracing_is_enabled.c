
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer_disabled; } ;


 TYPE_1__ global_trace ;
 int smp_rmb () ;

int tracing_is_enabled(void)
{





 smp_rmb();
 return !global_trace.buffer_disabled;
}
