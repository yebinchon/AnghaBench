
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 scalar_t__ tracer_enabled ;

__attribute__((used)) static void wakeup_tracer_stop(struct trace_array *tr)
{
 tracer_enabled = 0;
}
