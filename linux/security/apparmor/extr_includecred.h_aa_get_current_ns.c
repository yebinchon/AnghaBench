
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_label* __begin_current_label_crit_section () ;
 int __end_current_label_crit_section (struct aa_label*) ;
 struct aa_ns* aa_get_ns (int ) ;
 int labels_ns (struct aa_label*) ;

__attribute__((used)) static inline struct aa_ns *aa_get_current_ns(void)
{
 struct aa_label *label;
 struct aa_ns *ns;

 label = __begin_current_label_crit_section();
 ns = aa_get_ns(labels_ns(label));
 __end_current_label_crit_section(label);

 return ns;
}
