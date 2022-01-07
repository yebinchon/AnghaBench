
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;


 int AA_BUG (int) ;
 int VEC_FLAG_TERMINATE ;
 int aa_put_profile (struct aa_profile*) ;
 int profile_cmp (struct aa_profile*,struct aa_profile*) ;
 int sort (struct aa_profile**,int,int,int ,int *) ;
 int sort_cmp ;
 int unique (struct aa_profile**,int) ;

int aa_vec_unique(struct aa_profile **vec, int n, int flags)
{
 int i, dups = 0;

 AA_BUG(n < 1);
 AA_BUG(!vec);


 if (n > 8) {
  sort(vec, n, sizeof(struct aa_profile *), sort_cmp, ((void*)0));
  dups = unique(vec, n);
  goto out;
 }


 for (i = 1; i < n; i++) {
  struct aa_profile *tmp = vec[i];
  int pos, j;

  for (pos = i - 1 - dups; pos >= 0; pos--) {
   int res = profile_cmp(vec[pos], tmp);

   if (res == 0) {

    aa_put_profile(tmp);
    dups++;
    goto continue_outer;
   } else if (res < 0)
    break;
  }

  pos++;

  for (j = i - dups; j > pos; j--)
   vec[j] = vec[j - 1];
  vec[pos] = tmp;
continue_outer:
  ;
 }

 AA_BUG(dups < 0);

out:
 if (flags & VEC_FLAG_TERMINATE)
  vec[n - dups] = ((void*)0);

 return dups;
}
