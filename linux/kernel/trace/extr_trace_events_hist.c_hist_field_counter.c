
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_field {int dummy; } ;



__attribute__((used)) static u64 hist_field_counter(struct hist_field *field,
         struct tracing_map_elt *elt,
         struct ring_buffer_event *rbe,
         void *event)
{
 return 1;
}
