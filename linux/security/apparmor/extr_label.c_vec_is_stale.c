
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;


 int AA_BUG (int) ;
 scalar_t__ profile_is_stale (struct aa_profile*) ;

__attribute__((used)) static bool vec_is_stale(struct aa_profile **vec, int n)
{
 int i;

 AA_BUG(!vec);

 for (i = 0; i < n; i++) {
  if (profile_is_stale(vec[i]))
   return 1;
 }

 return 0;
}
