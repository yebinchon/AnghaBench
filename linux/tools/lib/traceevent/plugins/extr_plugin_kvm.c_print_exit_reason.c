
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int dummy; } ;


 char* find_exit_reason (unsigned long long,unsigned long long) ;
 scalar_t__ tep_get_field_val (struct trace_seq*,struct tep_event*,char const*,struct tep_record*,unsigned long long*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static int print_exit_reason(struct trace_seq *s, struct tep_record *record,
        struct tep_event *event, const char *field)
{
 unsigned long long isa;
 unsigned long long val;
 const char *reason;

 if (tep_get_field_val(s, event, field, record, &val, 1) < 0)
  return -1;

 if (tep_get_field_val(s, event, "isa", record, &isa, 0) < 0)
  isa = 1;

 reason = find_exit_reason(isa, val);
 if (reason)
  trace_seq_printf(s, "reason %s", reason);
 else
  trace_seq_printf(s, "reason UNKNOWN (%llu)", val);
 return 0;
}
