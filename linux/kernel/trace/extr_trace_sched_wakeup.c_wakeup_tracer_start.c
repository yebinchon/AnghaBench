
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int tracer_enabled ;
 int wakeup_reset (struct trace_array*) ;

__attribute__((used)) static void wakeup_tracer_start(struct trace_array *tr)
{
 wakeup_reset(tr);
 tracer_enabled = 1;
}
