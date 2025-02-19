
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_it {size_t i; size_t j; } ;
struct aa_profile {int dummy; } ;
struct aa_label {size_t size; struct aa_profile** vec; } ;


 int AA_BUG (int) ;
 int profile_cmp (struct aa_profile*,struct aa_profile*) ;

struct aa_profile *__aa_label_next_not_in_set(struct label_it *I,
           struct aa_label *set,
           struct aa_label *sub)
{
 AA_BUG(!set);
 AA_BUG(!I);
 AA_BUG(I->i < 0);
 AA_BUG(I->i > set->size);
 AA_BUG(!sub);
 AA_BUG(I->j < 0);
 AA_BUG(I->j > sub->size);

 while (I->j < sub->size && I->i < set->size) {
  int res = profile_cmp(sub->vec[I->j], set->vec[I->i]);

  if (res == 0) {
   (I->j)++;
   (I->i)++;
  } else if (res > 0)
   (I->i)++;
  else
   return sub->vec[(I->j)++];
 }

 if (I->j < sub->size)
  return sub->vec[(I->j)++];

 return ((void*)0);
}
