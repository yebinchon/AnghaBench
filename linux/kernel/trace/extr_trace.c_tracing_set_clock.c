
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer; } ;
struct trace_array {int clock_id; TYPE_1__ max_buffer; TYPE_1__ trace_buffer; } ;
struct TYPE_5__ {int func; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_set_clock (scalar_t__,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 TYPE_2__* trace_clocks ;
 int trace_types_lock ;
 int tracing_reset_online_cpus (TYPE_1__*) ;

int tracing_set_clock(struct trace_array *tr, const char *clockstr)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(trace_clocks); i++) {
  if (strcmp(trace_clocks[i].name, clockstr) == 0)
   break;
 }
 if (i == ARRAY_SIZE(trace_clocks))
  return -EINVAL;

 mutex_lock(&trace_types_lock);

 tr->clock_id = i;

 ring_buffer_set_clock(tr->trace_buffer.buffer, trace_clocks[i].func);





 tracing_reset_online_cpus(&tr->trace_buffer);







 mutex_unlock(&trace_types_lock);

 return 0;
}
