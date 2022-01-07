
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 struct trace_array* ctx_trace ;
 int start_nop_trace (struct trace_array*) ;

__attribute__((used)) static int nop_trace_init(struct trace_array *tr)
{
 ctx_trace = tr;
 start_nop_trace(tr);
 return 0;
}
