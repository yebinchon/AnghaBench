
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cpuset {int partition_root_state; } ;





 struct cpuset* css_cs (int ) ;
 int seq_css (struct seq_file*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int sched_partition_show(struct seq_file *seq, void *v)
{
 struct cpuset *cs = css_cs(seq_css(seq));

 switch (cs->partition_root_state) {
 case 129:
  seq_puts(seq, "root\n");
  break;
 case 130:
  seq_puts(seq, "member\n");
  break;
 case 128:
  seq_puts(seq, "root invalid\n");
  break;
 }
 return 0;
}
