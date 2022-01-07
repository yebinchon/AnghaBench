
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;


 int AA_BUG (int,...) ;
 int aa_put_profile (struct aa_profile*) ;
 int profile_cmp (struct aa_profile*,struct aa_profile*) ;

__attribute__((used)) static inline int unique(struct aa_profile **vec, int n)
{
 int i, pos, dups = 0;

 AA_BUG(n < 1);
 AA_BUG(!vec);

 pos = 0;
 for (i = 1; i < n; i++) {
  int res = profile_cmp(vec[pos], vec[i]);

  AA_BUG(res > 0, "vec not sorted");
  if (res == 0) {

   aa_put_profile(vec[i]);
   dups++;
   continue;
  }
  pos++;
  if (dups)
   vec[pos] = vec[i];
 }

 AA_BUG(dups < 0);

 return dups;
}
