
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int stop_nop_trace (struct trace_array*) ;

__attribute__((used)) static void nop_trace_reset(struct trace_array *tr)
{
 stop_nop_trace(tr);
}
