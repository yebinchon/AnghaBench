
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int data; } ;
struct tep_handle {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {struct tep_handle* tep; } ;
struct func_map {char* func; scalar_t__ addr; } ;


 struct func_map* find_func (struct tep_handle*,unsigned long long) ;
 int snprintf (char*,int,char*,char*,scalar_t__) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct tep_format_field* tep_find_field (struct tep_event*,char const*) ;
 scalar_t__ tep_read_number_field (struct tep_format_field*,int ,unsigned long long*) ;
 int trace_seq_printf (struct trace_seq*,char const*,char const*) ;

int tep_print_func_field(struct trace_seq *s, const char *fmt,
    struct tep_event *event, const char *name,
    struct tep_record *record, int err)
{
 struct tep_format_field *field = tep_find_field(event, name);
 struct tep_handle *tep = event->tep;
 unsigned long long val;
 struct func_map *func;
 char tmp[128];

 if (!field)
  goto failed;

 if (tep_read_number_field(field, record->data, &val))
  goto failed;

 func = find_func(tep, val);

 if (func)
  snprintf(tmp, 128, "%s/0x%llx", func->func, func->addr - val);
 else
  sprintf(tmp, "0x%08llx", val);

 return trace_seq_printf(s, fmt, tmp);

 failed:
 if (err)
  trace_seq_printf(s, "CAN'T FIND FIELD \"%s\"", name);
 return -1;
}
