
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;


 struct aa_label* aa_current_raw_label () ;
 struct aa_label* aa_get_newest_label (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 scalar_t__ aa_replace_current_label (struct aa_label*) ;
 scalar_t__ label_is_stale (struct aa_label*) ;
 int might_sleep () ;

__attribute__((used)) static inline struct aa_label *begin_current_label_crit_section(void)
{
 struct aa_label *label = aa_current_raw_label();

 might_sleep();

 if (label_is_stale(label)) {
  label = aa_get_newest_label(label);
  if (aa_replace_current_label(label) == 0)

   aa_put_label(label);
 }

 return label;
}
