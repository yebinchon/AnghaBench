
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stop_count; } ;


 TYPE_1__ global_trace ;

int is_tracing_stopped(void)
{
 return global_trace.stop_count;
}
