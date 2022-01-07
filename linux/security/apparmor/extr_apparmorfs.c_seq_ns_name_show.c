
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 struct aa_label* begin_current_label_crit_section () ;
 int end_current_label_crit_section (struct aa_label*) ;
 TYPE_2__* labels_ns (struct aa_label*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int seq_ns_name_show(struct seq_file *seq, void *v)
{
 struct aa_label *label = begin_current_label_crit_section();
 seq_printf(seq, "%s\n", labels_ns(label)->base.name);
 end_current_label_crit_section(label);

 return 0;
}
