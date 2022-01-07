
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int trace_default_header (struct seq_file*) ;

__attribute__((used)) static void wakeup_print_header(struct seq_file *s)
{
 trace_default_header(s);
}
