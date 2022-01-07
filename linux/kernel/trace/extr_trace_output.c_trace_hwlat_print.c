
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_event {int dummy; } ;
struct trace_entry {int dummy; } ;
struct TYPE_2__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct hwlat_entry {scalar_t__ nmi_count; scalar_t__ nmi_total_ts; TYPE_1__ timestamp; int outer_duration; int duration; int seqnum; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int CONFIG_GENERIC_SCHED_CLOCK ;
 int IS_ENABLED (int ) ;
 int trace_assign_type (struct hwlat_entry*,struct trace_entry*) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,scalar_t__,...) ;
 int trace_seq_putc (struct trace_seq*,char) ;

__attribute__((used)) static enum print_line_t
trace_hwlat_print(struct trace_iterator *iter, int flags,
    struct trace_event *event)
{
 struct trace_entry *entry = iter->ent;
 struct trace_seq *s = &iter->seq;
 struct hwlat_entry *field;

 trace_assign_type(field, entry);

 trace_seq_printf(s, "#%-5u inner/outer(us): %4llu/%-5llu ts:%lld.%09ld",
    field->seqnum,
    field->duration,
    field->outer_duration,
    (long long)field->timestamp.tv_sec,
    field->timestamp.tv_nsec);

 if (field->nmi_count) {




  if (!IS_ENABLED(CONFIG_GENERIC_SCHED_CLOCK))
   trace_seq_printf(s, " nmi-total:%llu",
      field->nmi_total_ts);
  trace_seq_printf(s, " nmi-count:%u",
     field->nmi_count);
 }

 trace_seq_putc(s, '\n');

 return trace_handle_return(s);
}
