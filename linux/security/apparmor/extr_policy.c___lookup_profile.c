
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_policy {int dummy; } ;


 struct aa_profile* __lookupn_profile (struct aa_policy*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static struct aa_profile *__lookup_profile(struct aa_policy *base,
        const char *hname)
{
 return __lookupn_profile(base, hname, strlen(hname));
}
