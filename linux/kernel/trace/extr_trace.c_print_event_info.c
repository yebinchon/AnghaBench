
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int dummy; } ;
struct seq_file {int dummy; } ;


 int get_total_entries (struct trace_buffer*,unsigned long*,unsigned long*) ;
 int num_online_cpus () ;
 int seq_printf (struct seq_file*,char*,unsigned long,unsigned long,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_event_info(struct trace_buffer *buf, struct seq_file *m)
{
 unsigned long total;
 unsigned long entries;

 get_total_entries(buf, &total, &entries);
 seq_printf(m, "# entries-in-buffer/entries-written: %lu/%lu   #P:%d\n",
     entries, total, num_online_cpus());
 seq_puts(m, "#\n");
}
