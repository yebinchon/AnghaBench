
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int label; } ;


 int aa_get_newest_label (int *) ;
 struct aa_profile* labels_profile (int ) ;

__attribute__((used)) static inline struct aa_profile *aa_get_newest_profile(struct aa_profile *p)
{
 return labels_profile(aa_get_newest_label(&p->label));
}
