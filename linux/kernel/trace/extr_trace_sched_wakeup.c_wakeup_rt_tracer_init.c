
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int EBUSY ;
 int __wakeup_tracer_init (struct trace_array*) ;
 scalar_t__ wakeup_busy ;
 scalar_t__ wakeup_dl ;
 int wakeup_rt ;

__attribute__((used)) static int wakeup_rt_tracer_init(struct trace_array *tr)
{
 if (wakeup_busy)
  return -EBUSY;

 wakeup_dl = 0;
 wakeup_rt = 1;
 return __wakeup_tracer_init(tr);
}
