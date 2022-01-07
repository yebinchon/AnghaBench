
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct aa_label {int size; } ;


 struct aa_label* begin_current_label_crit_section () ;
 int end_current_label_crit_section (struct aa_label*) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int seq_ns_stacked_show(struct seq_file *seq, void *v)
{
 struct aa_label *label;

 label = begin_current_label_crit_section();
 seq_printf(seq, "%s\n", label->size > 1 ? "yes" : "no");
 end_current_label_crit_section(label);

 return 0;
}
