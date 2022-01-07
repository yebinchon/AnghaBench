
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int ns; } ;
struct aa_label {int dummy; } ;


 int aa_ns_visible (int ,int ,int) ;
 int labels_ns (struct aa_label*) ;

__attribute__((used)) static inline bool label_is_visible(struct aa_profile *profile,
        struct aa_label *label)
{
 return aa_ns_visible(profile->ns, labels_ns(label), 1);
}
