
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int stop_kthread () ;

__attribute__((used)) static void hwlat_tracer_stop(struct trace_array *tr)
{
 stop_kthread();
}
