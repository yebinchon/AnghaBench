
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_policy {int profiles; } ;
struct aa_profile {struct aa_policy base; } ;


 struct aa_profile* __strn_find_child (int *,char const*,size_t) ;
 char* strnstr (char const*,char*,size_t) ;

__attribute__((used)) static struct aa_profile *__lookupn_profile(struct aa_policy *base,
         const char *hname, size_t n)
{
 struct aa_profile *profile = ((void*)0);
 const char *split;

 for (split = strnstr(hname, "//", n); split;
      split = strnstr(hname, "//", n)) {
  profile = __strn_find_child(&base->profiles, hname,
         split - hname);
  if (!profile)
   return ((void*)0);

  base = &profile->base;
  n -= split + 2 - hname;
  hname = split + 2;
 }

 if (n)
  return __strn_find_child(&base->profiles, hname, n);
 return ((void*)0);
}
