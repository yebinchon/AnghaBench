
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_rmb () ;
 int this_cpu_dec (int ) ;
 int trace_buffered_event_cnt ;

__attribute__((used)) static void enable_trace_buffered_event(void *data)
{

 smp_rmb();
 this_cpu_dec(trace_buffered_event_cnt);
}
