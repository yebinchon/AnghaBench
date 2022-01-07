
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_ns {int base; } ;


 int __lookup_profile (int *,char const*) ;
 struct aa_profile* aa_get_profile (int ) ;
 int replacement_allowed (struct aa_profile*,int,char const**) ;

__attribute__((used)) static int __lookup_replace(struct aa_ns *ns, const char *hname,
       bool noreplace, struct aa_profile **p,
       const char **info)
{
 *p = aa_get_profile(__lookup_profile(&ns->base, hname));
 if (*p) {
  int error = replacement_allowed(*p, noreplace, info);
  if (error) {
   *info = "profile can not be replaced";
   return error;
  }
 }

 return 0;
}
