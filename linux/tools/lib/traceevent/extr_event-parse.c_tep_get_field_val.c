
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;


 int get_field_val (struct trace_seq*,struct tep_format_field*,char const*,struct tep_record*,unsigned long long*,int) ;
 struct tep_format_field* tep_find_field (struct tep_event*,char const*) ;

int tep_get_field_val(struct trace_seq *s, struct tep_event *event,
        const char *name, struct tep_record *record,
        unsigned long long *val, int err)
{
 struct tep_format_field *field;

 if (!event)
  return -1;

 field = tep_find_field(event, name);

 return get_field_val(s, field, name, record, val, err);
}
