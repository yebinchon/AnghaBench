
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_field {TYPE_1__* field; } ;
struct TYPE_2__ {int offset; } ;



__attribute__((used)) static u64 hist_field_dynstring(struct hist_field *hist_field,
    struct tracing_map_elt *elt,
    struct ring_buffer_event *rbe,
    void *event)
{
 u32 str_item = *(u32 *)(event + hist_field->field->offset);
 int str_loc = str_item & 0xffff;
 char *addr = (char *)(event + str_loc);

 return (u64)(unsigned long)addr;
}
