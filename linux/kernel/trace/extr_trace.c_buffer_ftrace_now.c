
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_buffer {int buffer; } ;


 int ring_buffer_normalize_time_stamp (int ,int,int *) ;
 int ring_buffer_time_stamp (int ,int) ;
 int trace_clock_local () ;

__attribute__((used)) static u64 buffer_ftrace_now(struct trace_buffer *buf, int cpu)
{
 u64 ts;


 if (!buf->buffer)
  return trace_clock_local();

 ts = ring_buffer_time_stamp(buf->buffer, cpu);
 ring_buffer_normalize_time_stamp(buf->buffer, cpu, &ts);

 return ts;
}
