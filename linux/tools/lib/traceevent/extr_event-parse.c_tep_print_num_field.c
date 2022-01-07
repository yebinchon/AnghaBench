
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int data; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;


 struct tep_format_field* tep_find_field (struct tep_event*,char const*) ;
 scalar_t__ tep_read_number_field (struct tep_format_field*,int ,unsigned long long*) ;
 int trace_seq_printf (struct trace_seq*,char const*,...) ;

int tep_print_num_field(struct trace_seq *s, const char *fmt,
   struct tep_event *event, const char *name,
   struct tep_record *record, int err)
{
 struct tep_format_field *field = tep_find_field(event, name);
 unsigned long long val;

 if (!field)
  goto failed;

 if (tep_read_number_field(field, record->data, &val))
  goto failed;

 return trace_seq_printf(s, fmt, val);

 failed:
 if (err)
  trace_seq_printf(s, "CAN'T FIND FIELD \"%s\"", name);
 return -1;
}
