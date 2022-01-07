
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int data; } ;
struct tep_format_field {int dummy; } ;


 scalar_t__ tep_read_number_field (struct tep_format_field*,int ,unsigned long long*) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*) ;

int get_field_val(struct trace_seq *s, struct tep_format_field *field,
    const char *name, struct tep_record *record,
    unsigned long long *val, int err)
{
 if (!field) {
  if (err)
   trace_seq_printf(s, "<CANT FIND FIELD %s>", name);
  return -1;
 }

 if (tep_read_number_field(field, record->data, val)) {
  if (err)
   trace_seq_printf(s, " %s=INVALID", name);
  return -1;
 }

 return 0;
}
