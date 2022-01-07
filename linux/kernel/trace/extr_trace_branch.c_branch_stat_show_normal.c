
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ftrace_branch_data {int incorrect; int correct; } ;


 int branch_stat_show (struct seq_file*,struct ftrace_branch_data*,char const*) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int branch_stat_show_normal(struct seq_file *m,
       struct ftrace_branch_data *p, const char *f)
{
 seq_printf(m, "%8lu %8lu ", p->correct, p->incorrect);
 branch_stat_show(m, p, f);
 return 0;
}
