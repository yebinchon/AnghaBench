
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;


 int AA_BUG (int) ;
 int profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static bool vec_unconfined(struct aa_profile **vec, int n)
{
 int i;

 AA_BUG(!vec);

 for (i = 0; i < n; i++) {
  if (!profile_unconfined(vec[i]))
   return 0;
 }

 return 1;
}
