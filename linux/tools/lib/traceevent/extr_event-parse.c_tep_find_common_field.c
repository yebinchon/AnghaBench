
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_format_field {int name; struct tep_format_field* next; } ;
struct TYPE_2__ {struct tep_format_field* common_fields; } ;
struct tep_event {TYPE_1__ format; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct tep_format_field *
tep_find_common_field(struct tep_event *event, const char *name)
{
 struct tep_format_field *format;

 for (format = event->format.common_fields;
      format; format = format->next) {
  if (strcmp(format->name, name) == 0)
   break;
 }

 return format;
}
