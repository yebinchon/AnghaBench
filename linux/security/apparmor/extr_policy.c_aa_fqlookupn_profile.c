
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_ns {int unconfined; } ;
struct aa_label {int dummy; } ;


 struct aa_profile* aa_get_newest_profile (int ) ;
 struct aa_ns* aa_get_ns (int ) ;
 struct aa_ns* aa_lookupn_ns (int ,char const*,size_t) ;
 struct aa_profile* aa_lookupn_profile (struct aa_ns*,char const*,size_t) ;
 int aa_put_ns (struct aa_ns*) ;
 char* aa_splitn_fqname (char const*,size_t,char const**,size_t*) ;
 int labels_ns (struct aa_label*) ;

struct aa_profile *aa_fqlookupn_profile(struct aa_label *base,
     const char *fqname, size_t n)
{
 struct aa_profile *profile;
 struct aa_ns *ns;
 const char *name, *ns_name;
 size_t ns_len;

 name = aa_splitn_fqname(fqname, n, &ns_name, &ns_len);
 if (ns_name) {
  ns = aa_lookupn_ns(labels_ns(base), ns_name, ns_len);
  if (!ns)
   return ((void*)0);
 } else
  ns = aa_get_ns(labels_ns(base));

 if (name)
  profile = aa_lookupn_profile(ns, name, n - (name - fqname));
 else if (ns)

  profile = aa_get_newest_profile(ns->unconfined);
 else
  profile = ((void*)0);
 aa_put_ns(ns);

 return profile;
}
