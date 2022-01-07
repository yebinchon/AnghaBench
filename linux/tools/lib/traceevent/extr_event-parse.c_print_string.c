
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int data; } ;
struct tep_handle {int dummy; } ;
struct tep_event {char const* name; } ;
struct print_event_type {char* format; } ;


 int TEP_PRINT_COMM ;
 int TEP_PRINT_INFO ;
 int TEP_PRINT_INFO_RAW ;
 int TEP_PRINT_LATENCY ;
 int TEP_PRINT_NAME ;
 int data_latency_format (struct tep_handle*,struct trace_seq*,char*,struct tep_record*) ;
 char* find_cmdline (struct tep_handle*,int) ;
 int parse_common_pid (struct tep_handle*,int ) ;
 int print_event_info (struct trace_seq*,char*,int,struct tep_event*,struct tep_record*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*) ;

__attribute__((used)) static void print_string(struct tep_handle *tep, struct trace_seq *s,
    struct tep_record *record, struct tep_event *event,
    const char *arg, struct print_event_type *type)
{
 const char *comm;
 int pid;

 if (strncmp(arg, TEP_PRINT_LATENCY, strlen(TEP_PRINT_LATENCY)) == 0) {
  data_latency_format(tep, s, type->format, record);
 } else if (strncmp(arg, TEP_PRINT_COMM, strlen(TEP_PRINT_COMM)) == 0) {
  pid = parse_common_pid(tep, record->data);
  comm = find_cmdline(tep, pid);
  trace_seq_printf(s, type->format, comm);
 } else if (strncmp(arg, TEP_PRINT_INFO_RAW, strlen(TEP_PRINT_INFO_RAW)) == 0) {
  print_event_info(s, type->format, 1, event, record);
 } else if (strncmp(arg, TEP_PRINT_INFO, strlen(TEP_PRINT_INFO)) == 0) {
  print_event_info(s, type->format, 0, event, record);
 } else if (strncmp(arg, TEP_PRINT_NAME, strlen(TEP_PRINT_NAME)) == 0) {
  trace_seq_printf(s, type->format, event->name);
 } else {
  trace_seq_printf(s, "[UNKNOWN TEP TYPE %s]", arg);
 }

}
