
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_format_field {int dummy; } ;
struct TYPE_2__ {int fields; int nr_fields; } ;
struct tep_event {TYPE_1__ format; int name; } ;


 struct tep_format_field** get_event_fields (char*,int ,int ,int ) ;

struct tep_format_field **tep_event_fields(struct tep_event *event)
{
 return get_event_fields("event", event->name,
    event->format.nr_fields,
    event->format.fields);
}
