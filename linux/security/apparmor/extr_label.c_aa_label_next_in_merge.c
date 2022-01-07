
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_it {size_t i; size_t j; } ;
struct aa_profile {int dummy; } ;
struct aa_label {size_t size; struct aa_profile** vec; } ;


 int AA_BUG (int) ;
 int profile_cmp (struct aa_profile*,struct aa_profile*) ;

struct aa_profile *aa_label_next_in_merge(struct label_it *I,
       struct aa_label *a,
       struct aa_label *b)
{
 AA_BUG(!a);
 AA_BUG(!b);
 AA_BUG(!I);
 AA_BUG(I->i < 0);
 AA_BUG(I->i > a->size);
 AA_BUG(I->j < 0);
 AA_BUG(I->j > b->size);

 if (I->i < a->size) {
  if (I->j < b->size) {
   int res = profile_cmp(a->vec[I->i], b->vec[I->j]);

   if (res > 0)
    return b->vec[(I->j)++];
   if (res == 0)
    (I->j)++;
  }

  return a->vec[(I->i)++];
 }

 if (I->j < b->size)
  return b->vec[(I->j)++];

 return ((void*)0);
}
