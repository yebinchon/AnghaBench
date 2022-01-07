
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_ns {int dummy; } ;


 struct aa_profile* aa_lookupn_profile (struct aa_ns*,char const*,int ) ;
 int strlen (char const*) ;

struct aa_profile *aa_lookup_profile(struct aa_ns *ns, const char *hname)
{
 return aa_lookupn_profile(ns, hname, strlen(hname));
}
