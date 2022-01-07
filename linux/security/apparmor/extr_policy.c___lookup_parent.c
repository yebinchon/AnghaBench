
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_policy {int profiles; } ;
struct aa_profile {struct aa_policy base; } ;
struct aa_ns {struct aa_policy base; } ;


 struct aa_profile* __strn_find_child (int *,char const*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static struct aa_policy *__lookup_parent(struct aa_ns *ns,
      const char *hname)
{
 struct aa_policy *policy;
 struct aa_profile *profile = ((void*)0);
 char *split;

 policy = &ns->base;

 for (split = strstr(hname, "//"); split;) {
  profile = __strn_find_child(&policy->profiles, hname,
         split - hname);
  if (!profile)
   return ((void*)0);
  policy = &profile->base;
  hname = split + 2;
  split = strstr(hname, "//");
 }
 if (!profile)
  return &ns->base;
 return &profile->base;
}
