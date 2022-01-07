
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int cpu; int data; } ;
struct tep_handle {int dummy; } ;
struct tep_event {int dummy; } ;
struct print_event_type {int format; } ;





 int parse_common_pid (struct tep_handle*,int ) ;
 void print_event_time (struct tep_handle*,struct trace_seq*,int ,struct tep_event*,struct tep_record*) ;
 int trace_seq_printf (struct trace_seq*,int ,int) ;

__attribute__((used)) static void print_int(struct tep_handle *tep, struct trace_seq *s,
        struct tep_record *record, struct tep_event *event,
        int arg, struct print_event_type *type)
{
 int param;

 switch (arg) {
 case 130:
  param = record->cpu;
  break;
 case 129:
  param = parse_common_pid(tep, record->data);
  break;
 case 128:
  return print_event_time(tep, s, type->format, event, record);
 default:
  return;
 }
 trace_seq_printf(s, type->format, param);
}
