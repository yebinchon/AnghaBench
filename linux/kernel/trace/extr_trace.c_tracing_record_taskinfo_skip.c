
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_RECORD_CMDLINE ;
 int TRACE_RECORD_TGID ;
 int __this_cpu_read (int ) ;
 scalar_t__ atomic_read (int *) ;
 int trace_record_taskinfo_disabled ;
 int trace_taskinfo_save ;
 int tracing_is_on () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool tracing_record_taskinfo_skip(int flags)
{
 if (unlikely(!(flags & (TRACE_RECORD_CMDLINE | TRACE_RECORD_TGID))))
  return 1;
 if (atomic_read(&trace_record_taskinfo_disabled) || !tracing_is_on())
  return 1;
 if (!__this_cpu_read(trace_taskinfo_save))
  return 1;
 return 0;
}
