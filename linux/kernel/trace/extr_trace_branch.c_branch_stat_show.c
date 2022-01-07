
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ftrace_branch_data {int line; int func; } ;


 long get_incorrect_percent (struct ftrace_branch_data*) ;
 int seq_printf (struct seq_file*,char*,long,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void branch_stat_show(struct seq_file *m,
        struct ftrace_branch_data *p, const char *f)
{
 long percent;




 percent = get_incorrect_percent(p);

 if (percent < 0)
  seq_puts(m, "  X ");
 else
  seq_printf(m, "%3ld ", percent);

 seq_printf(m, "%-30.30s %-20.20s %d\n", p->func, f, p->line);
}
