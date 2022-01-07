
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_field {int (* fn ) (struct hist_field*,struct tracing_map_elt*,struct ring_buffer_event*,void*) ;struct hist_field** operands; } ;
typedef int s64 ;


 int stub1 (struct hist_field*,struct tracing_map_elt*,struct ring_buffer_event*,void*) ;

__attribute__((used)) static u64 hist_field_unary_minus(struct hist_field *hist_field,
      struct tracing_map_elt *elt,
      struct ring_buffer_event *rbe,
      void *event)
{
 struct hist_field *operand = hist_field->operands[0];

 s64 sval = (s64)operand->fn(operand, elt, rbe, event);
 u64 val = (u64)-sval;

 return val;
}
