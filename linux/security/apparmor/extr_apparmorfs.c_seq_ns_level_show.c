
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int level; } ;


 struct aa_label* begin_current_label_crit_section () ;
 int end_current_label_crit_section (struct aa_label*) ;
 TYPE_1__* labels_ns (struct aa_label*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int seq_ns_level_show(struct seq_file *seq, void *v)
{
 struct aa_label *label;

 label = begin_current_label_crit_section();
 seq_printf(seq, "%d\n", labels_ns(label)->level);
 end_current_label_crit_section(label);

 return 0;
}
