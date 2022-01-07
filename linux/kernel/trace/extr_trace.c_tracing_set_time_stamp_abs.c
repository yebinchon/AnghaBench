
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer; } ;
struct TYPE_3__ {scalar_t__ buffer; } ;
struct trace_array {TYPE_2__ max_buffer; TYPE_1__ trace_buffer; scalar_t__ time_stamp_abs_ref; } ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_set_time_stamp_abs (scalar_t__,int) ;
 int trace_types_lock ;

int tracing_set_time_stamp_abs(struct trace_array *tr, bool abs)
{
 int ret = 0;

 mutex_lock(&trace_types_lock);

 if (abs && tr->time_stamp_abs_ref++)
  goto out;

 if (!abs) {
  if (WARN_ON_ONCE(!tr->time_stamp_abs_ref)) {
   ret = -EINVAL;
   goto out;
  }

  if (--tr->time_stamp_abs_ref)
   goto out;
 }

 ring_buffer_set_time_stamp_abs(tr->trace_buffer.buffer, abs);





 out:
 mutex_unlock(&trace_types_lock);

 return ret;
}
