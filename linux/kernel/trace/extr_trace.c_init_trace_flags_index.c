
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int* trace_flags_index; } ;


 int TRACE_FLAGS_MAX_SIZE ;

__attribute__((used)) static void init_trace_flags_index(struct trace_array *tr)
{
 int i;


 for (i = 0; i < TRACE_FLAGS_MAX_SIZE; i++)
  tr->trace_flags_index[i] = i;
}
