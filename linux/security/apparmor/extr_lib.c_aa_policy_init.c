
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_policy {char* hname; int profiles; int list; int name; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 char* aa_str_alloc (scalar_t__,int ) ;
 int basename (char*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

bool aa_policy_init(struct aa_policy *policy, const char *prefix,
      const char *name, gfp_t gfp)
{
 char *hname;


 if (prefix) {
  hname = aa_str_alloc(strlen(prefix) + strlen(name) + 3, gfp);
  if (hname)
   sprintf(hname, "%s//%s", prefix, name);
 } else {
  hname = aa_str_alloc(strlen(name) + 1, gfp);
  if (hname)
   strcpy(hname, name);
 }
 if (!hname)
  return 0;
 policy->hname = hname;

 policy->name = basename(policy->hname);
 INIT_LIST_HEAD(&policy->list);
 INIT_LIST_HEAD(&policy->profiles);

 return 1;
}
