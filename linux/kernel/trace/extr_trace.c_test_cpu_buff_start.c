
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct trace_iterator {int iter_flags; int idx; int cpu; int started; TYPE_1__* trace_buffer; struct trace_array* tr; struct trace_seq seq; } ;
struct trace_array {int trace_flags; } ;
struct TYPE_4__ {scalar_t__ skipped_entries; } ;
struct TYPE_3__ {int data; } ;


 int TRACE_FILE_ANNOTATE ;
 int TRACE_ITER_ANNOTATE ;
 scalar_t__ cpumask_available (int ) ;
 int cpumask_set_cpu (int ,int ) ;
 scalar_t__ cpumask_test_cpu (int ,int ) ;
 TYPE_2__* per_cpu_ptr (int ,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;

__attribute__((used)) static void test_cpu_buff_start(struct trace_iterator *iter)
{
 struct trace_seq *s = &iter->seq;
 struct trace_array *tr = iter->tr;

 if (!(tr->trace_flags & TRACE_ITER_ANNOTATE))
  return;

 if (!(iter->iter_flags & TRACE_FILE_ANNOTATE))
  return;

 if (cpumask_available(iter->started) &&
     cpumask_test_cpu(iter->cpu, iter->started))
  return;

 if (per_cpu_ptr(iter->trace_buffer->data, iter->cpu)->skipped_entries)
  return;

 if (cpumask_available(iter->started))
  cpumask_set_cpu(iter->cpu, iter->started);


 if (iter->idx > 1)
  trace_seq_printf(s, "##### CPU %u buffer started ####\n",
    iter->cpu);
}
