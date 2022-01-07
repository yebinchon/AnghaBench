
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u64 ;


 scalar_t__ kthread_should_stop () ;
 int trace_clock_local () ;

__attribute__((used)) static void busy_wait(ulong time)
{
 u64 start, end;
 start = trace_clock_local();
 do {
  end = trace_clock_local();
  if (kthread_should_stop())
   break;
 } while ((end - start) < (time * 1000));
}
