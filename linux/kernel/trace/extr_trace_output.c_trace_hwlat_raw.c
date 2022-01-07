
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct trace_event {int dummy; } ;
struct TYPE_2__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct hwlat_entry {int seqnum; TYPE_1__ timestamp; int outer_duration; int duration; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int trace_assign_type (struct hwlat_entry*,int ) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int ,long long,int ,int ) ;

__attribute__((used)) static enum print_line_t
trace_hwlat_raw(struct trace_iterator *iter, int flags,
  struct trace_event *event)
{
 struct hwlat_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 trace_seq_printf(s, "%llu %lld %lld %09ld %u\n",
    field->duration,
    field->outer_duration,
    (long long)field->timestamp.tv_sec,
    field->timestamp.tv_nsec,
    field->seqnum);

 return trace_handle_return(s);
}
