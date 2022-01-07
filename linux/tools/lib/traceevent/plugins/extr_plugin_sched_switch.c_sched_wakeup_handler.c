
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;


 struct tep_format_field* tep_find_any_field (struct tep_event*,char*) ;
 scalar_t__ tep_get_field_val (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned long long) ;
 int trace_seq_putc (struct trace_seq*,char) ;
 int write_and_save_comm (struct tep_format_field*,struct tep_record*,struct trace_seq*,unsigned long long) ;

__attribute__((used)) static int sched_wakeup_handler(struct trace_seq *s,
    struct tep_record *record,
    struct tep_event *event, void *context)
{
 struct tep_format_field *field;
 unsigned long long val;

 if (tep_get_field_val(s, event, "pid", record, &val, 1))
  return trace_seq_putc(s, '!');

 field = tep_find_any_field(event, "comm");
 if (field) {
  write_and_save_comm(field, record, s, val);
  trace_seq_putc(s, ':');
 }
 trace_seq_printf(s, "%lld", val);

 if (tep_get_field_val(s, event, "prio", record, &val, 0) == 0)
  trace_seq_printf(s, " [%lld]", val);

 if (tep_get_field_val(s, event, "success", record, &val, 1) == 0)
  trace_seq_printf(s, " success=%lld", val);

 if (tep_get_field_val(s, event, "target_cpu", record, &val, 0) == 0)
  trace_seq_printf(s, " CPU:%03llu", val);

 return 0;
}
