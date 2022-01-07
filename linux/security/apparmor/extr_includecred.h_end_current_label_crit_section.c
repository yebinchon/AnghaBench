
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;


 struct aa_label* aa_current_raw_label () ;
 int aa_put_label (struct aa_label*) ;

__attribute__((used)) static inline void end_current_label_crit_section(struct aa_label *label)
{
 if (label != aa_current_raw_label())
  aa_put_label(label);
}
