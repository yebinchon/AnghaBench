
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_entry {int dummy; } ;


 int trace_print_lat_fmt (struct trace_seq*,struct trace_entry*) ;
 int trace_seq_putc (struct trace_seq*,char) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static void print_graph_lat_fmt(struct trace_seq *s, struct trace_entry *entry)
{
 trace_seq_putc(s, ' ');
 trace_print_lat_fmt(s, entry);
 trace_seq_puts(s, " | ");
}
