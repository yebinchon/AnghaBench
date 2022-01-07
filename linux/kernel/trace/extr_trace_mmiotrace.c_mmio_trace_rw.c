
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array_cpu {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct mmiotrace_rw {int dummy; } ;


 int __trace_mmiotrace_rw (struct trace_array*,struct trace_array_cpu*,struct mmiotrace_rw*) ;
 struct trace_array* mmio_trace_array ;
 struct trace_array_cpu* per_cpu_ptr (int ,int ) ;
 int smp_processor_id () ;

void mmio_trace_rw(struct mmiotrace_rw *rw)
{
 struct trace_array *tr = mmio_trace_array;
 struct trace_array_cpu *data = per_cpu_ptr(tr->trace_buffer.data, smp_processor_id());
 __trace_mmiotrace_rw(tr, data, rw);
}
