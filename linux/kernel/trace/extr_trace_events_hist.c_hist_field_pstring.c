
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_field {TYPE_1__* field; } ;
struct TYPE_2__ {int offset; } ;



__attribute__((used)) static u64 hist_field_pstring(struct hist_field *hist_field,
         struct tracing_map_elt *elt,
         struct ring_buffer_event *rbe,
         void *event)
{
 char **addr = (char **)(event + hist_field->field->offset);

 return (u64)(unsigned long)*addr;
}
