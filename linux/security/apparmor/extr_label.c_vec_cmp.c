
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;


 int AA_BUG (int) ;
 int profile_cmp (struct aa_profile*,struct aa_profile*) ;

__attribute__((used)) static int vec_cmp(struct aa_profile **a, int an, struct aa_profile **b, int bn)
{
 int i;

 AA_BUG(!a);
 AA_BUG(!*a);
 AA_BUG(!b);
 AA_BUG(!*b);
 AA_BUG(an <= 0);
 AA_BUG(bn <= 0);

 for (i = 0; i < an && i < bn; i++) {
  int res = profile_cmp(a[i], b[i]);

  if (res != 0)
   return res;
 }

 return an - bn;
}
