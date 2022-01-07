
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_opt {int bit; } ;
struct tracer_flags {int val; struct tracer* trace; } ;
struct tracer {int (* set_flag ) (struct trace_array*,int ,int ,int) ;} ;
struct trace_array {int dummy; } ;


 int stub1 (struct trace_array*,int ,int ,int) ;

__attribute__((used)) static int __set_tracer_option(struct trace_array *tr,
          struct tracer_flags *tracer_flags,
          struct tracer_opt *opts, int neg)
{
 struct tracer *trace = tracer_flags->trace;
 int ret;

 ret = trace->set_flag(tr, tracer_flags->val, opts->bit, !neg);
 if (ret)
  return ret;

 if (neg)
  tracer_flags->val &= ~opts->bit;
 else
  tracer_flags->val |= opts->bit;
 return 0;
}
