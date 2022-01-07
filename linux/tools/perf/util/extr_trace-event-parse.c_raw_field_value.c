
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;


 struct tep_format_field* tep_find_any_field (struct tep_event*,char const*) ;
 int tep_read_number_field (struct tep_format_field*,void*,unsigned long long*) ;

unsigned long long
raw_field_value(struct tep_event *event, const char *name, void *data)
{
 struct tep_format_field *field;
 unsigned long long val;

 field = tep_find_any_field(event, name);
 if (!field)
  return 0ULL;

 tep_read_number_field(field, data, &val);

 return val;
}
