
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trace_array {int clock_id; } ;
struct seq_file {struct trace_array* private; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int seq_printf (struct seq_file*,char*,char*,char*,int ,char*) ;
 int seq_putc (struct seq_file*,char) ;
 TYPE_1__* trace_clocks ;

__attribute__((used)) static int tracing_clock_show(struct seq_file *m, void *v)
{
 struct trace_array *tr = m->private;
 int i;

 for (i = 0; i < ARRAY_SIZE(trace_clocks); i++)
  seq_printf(m,
   "%s%s%s%s", i ? " " : "",
   i == tr->clock_id ? "[" : "", trace_clocks[i].name,
   i == tr->clock_id ? "]" : "");
 seq_putc(m, '\n');

 return 0;
}
