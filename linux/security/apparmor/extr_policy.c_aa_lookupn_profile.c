
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_ns {int unconfined; int base; } ;


 struct aa_profile* __lookupn_profile (int *,char const*,size_t) ;
 struct aa_profile* aa_get_newest_profile (int ) ;
 int aa_get_profile_not0 (struct aa_profile*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

struct aa_profile *aa_lookupn_profile(struct aa_ns *ns, const char *hname,
          size_t n)
{
 struct aa_profile *profile;

 rcu_read_lock();
 do {
  profile = __lookupn_profile(&ns->base, hname, n);
 } while (profile && !aa_get_profile_not0(profile));
 rcu_read_unlock();


 if (!profile && strncmp(hname, "unconfined", n) == 0)
  profile = aa_get_newest_profile(ns->unconfined);


 return profile;
}
