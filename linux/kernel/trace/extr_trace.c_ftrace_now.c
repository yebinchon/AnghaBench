
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int trace_buffer; } ;


 int buffer_ftrace_now (int *,int) ;
 TYPE_1__ global_trace ;

u64 ftrace_now(int cpu)
{
 return buffer_ftrace_now(&global_trace.trace_buffer, cpu);
}
