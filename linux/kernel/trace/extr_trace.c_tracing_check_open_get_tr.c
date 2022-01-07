
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int ENODEV ;
 int LOCKDOWN_TRACEFS ;
 int security_locked_down (int ) ;
 scalar_t__ trace_array_get (struct trace_array*) ;
 scalar_t__ tracing_disabled ;

int tracing_check_open_get_tr(struct trace_array *tr)
{
 int ret;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 if (tracing_disabled)
  return -ENODEV;

 if (tr && trace_array_get(tr) < 0)
  return -ENODEV;

 return 0;
}
