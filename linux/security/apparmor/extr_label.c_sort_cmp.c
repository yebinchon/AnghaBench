
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;


 int profile_cmp (struct aa_profile*,struct aa_profile*) ;

__attribute__((used)) static int sort_cmp(const void *a, const void *b)
{
 return profile_cmp(*(struct aa_profile **)a, *(struct aa_profile **)b);
}
