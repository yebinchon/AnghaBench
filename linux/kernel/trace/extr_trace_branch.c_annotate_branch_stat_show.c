
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int incorrect; int correct; } ;
struct ftrace_likely_data {TYPE_1__ data; int constant; } ;


 char* branch_stat_process_file (TYPE_1__*) ;
 int branch_stat_show (struct seq_file*,TYPE_1__*,char const*) ;
 int branch_stat_show_normal (struct seq_file*,TYPE_1__*,char const*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int,int ) ;
 int snprintf (int *,int ,char*,int ) ;

__attribute__((used)) static int annotate_branch_stat_show(struct seq_file *m, void *v)
{
 struct ftrace_likely_data *p = v;
 const char *f;
 int l;

 f = branch_stat_process_file(&p->data);

 if (!p->constant)
  return branch_stat_show_normal(m, &p->data, f);

 l = snprintf(((void*)0), 0, "/%lu", p->constant);
 l = l > 8 ? 0 : 8 - l;

 seq_printf(m, "%8lu/%lu %*lu ",
     p->data.correct, p->constant, l, p->data.incorrect);
 branch_stat_show(m, &p->data, f);
 return 0;
}
