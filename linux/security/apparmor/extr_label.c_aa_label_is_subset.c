
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_it {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int * __aa_label_next_not_in_set (struct label_it*,struct aa_label*,struct aa_label*) ;

bool aa_label_is_subset(struct aa_label *set, struct aa_label *sub)
{
 struct label_it i = { };

 AA_BUG(!set);
 AA_BUG(!sub);

 if (sub == set)
  return 1;

 return __aa_label_next_not_in_set(&i, set, sub) == ((void*)0);
}
