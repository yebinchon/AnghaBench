
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* hname; } ;
struct aa_profile {TYPE_2__ base; } ;
struct aa_ns {int lock; int base; int level; TYPE_1__* parent; } ;
struct aa_label {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int lock; } ;


 size_t ENOENT ;
 int OP_PROF_RM ;
 int __aa_bump_ns_revision (struct aa_ns*) ;
 int __aa_labelset_update_subtree (struct aa_ns*) ;
 int __aa_remove_ns (struct aa_ns*) ;
 int __lookup_profile (int *,char const*) ;
 int __remove_profile (struct aa_profile*) ;
 struct aa_ns* aa_get_ns (struct aa_ns*) ;
 struct aa_profile* aa_get_profile (int ) ;
 struct aa_ns* aa_lookupn_ns (struct aa_ns*,char const*,size_t) ;
 int aa_put_ns (struct aa_ns*) ;
 int aa_put_profile (struct aa_profile*) ;
 char* aa_splitn_fqname (char*,size_t,char const**,size_t*) ;
 int audit_policy (struct aa_label*,int ,char const*,char const*,char const*,size_t) ;
 struct aa_ns* labels_ns (struct aa_label*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

ssize_t aa_remove_profiles(struct aa_ns *policy_ns, struct aa_label *subj,
      char *fqname, size_t size)
{
 struct aa_ns *ns = ((void*)0);
 struct aa_profile *profile = ((void*)0);
 const char *name = fqname, *info = ((void*)0);
 const char *ns_name = ((void*)0);
 ssize_t error = 0;

 if (*fqname == 0) {
  info = "no profile specified";
  error = -ENOENT;
  goto fail;
 }

 if (fqname[0] == ':') {
  size_t ns_len;

  name = aa_splitn_fqname(fqname, size, &ns_name, &ns_len);

  ns = aa_lookupn_ns(policy_ns ? policy_ns : labels_ns(subj),
       ns_name, ns_len);
  if (!ns) {
   info = "namespace does not exist";
   error = -ENOENT;
   goto fail;
  }
 } else

  ns = aa_get_ns(policy_ns ? policy_ns : labels_ns(subj));

 if (!name) {

  mutex_lock_nested(&ns->parent->lock, ns->level);
  __aa_remove_ns(ns);
  __aa_bump_ns_revision(ns);
  mutex_unlock(&ns->parent->lock);
 } else {

  mutex_lock_nested(&ns->lock, ns->level);
  profile = aa_get_profile(__lookup_profile(&ns->base, name));
  if (!profile) {
   error = -ENOENT;
   info = "profile does not exist";
   goto fail_ns_lock;
  }
  name = profile->base.hname;
  __remove_profile(profile);
  __aa_labelset_update_subtree(ns);
  __aa_bump_ns_revision(ns);
  mutex_unlock(&ns->lock);
 }


 (void) audit_policy(subj, OP_PROF_RM, ns_name, name, info,
       error);
 aa_put_ns(ns);
 aa_put_profile(profile);
 return size;

fail_ns_lock:
 mutex_unlock(&ns->lock);
 aa_put_ns(ns);

fail:
 (void) audit_policy(subj, OP_PROF_RM, ns_name, name, info,
       error);
 return error;
}
