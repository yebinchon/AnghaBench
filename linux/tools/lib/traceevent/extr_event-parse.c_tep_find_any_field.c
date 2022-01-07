
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;


 struct tep_format_field* tep_find_common_field (struct tep_event*,char const*) ;
 struct tep_format_field* tep_find_field (struct tep_event*,char const*) ;

struct tep_format_field *
tep_find_any_field(struct tep_event *event, const char *name)
{
 struct tep_format_field *format;

 format = tep_find_common_field(event, name);
 if (format)
  return format;
 return tep_find_field(event, name);
}
