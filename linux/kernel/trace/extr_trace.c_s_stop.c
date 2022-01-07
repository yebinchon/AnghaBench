
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int cpu_file; scalar_t__ snapshot; TYPE_1__* trace; } ;
struct seq_file {struct trace_iterator* private; } ;
struct TYPE_2__ {scalar_t__ use_max_tr; } ;


 int atomic_dec (int *) ;
 int trace_access_unlock (int ) ;
 int trace_event_read_unlock () ;
 int trace_record_taskinfo_disabled ;

__attribute__((used)) static void s_stop(struct seq_file *m, void *p)
{
 struct trace_iterator *iter = m->private;






 if (!iter->snapshot)
  atomic_dec(&trace_record_taskinfo_disabled);

 trace_access_unlock(iter->cpu_file);
 trace_event_read_unlock();
}
