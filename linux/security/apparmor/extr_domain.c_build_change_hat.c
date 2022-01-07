
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_label {int dummy; } ;
struct TYPE_2__ {int * hname; } ;
struct aa_profile {struct aa_label label; TYPE_1__ base; int parent; } ;


 int AA_MAY_CHANGEHAT ;
 scalar_t__ COMPLAIN_MODE (struct aa_profile*) ;
 int ENOENT ;
 int ENOMEM ;
 int EPERM ;
 struct aa_label* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_UID ;
 int OP_CHANGE_HAT ;
 scalar_t__ PROFILE_IS_HAT (struct aa_profile*) ;
 int aa_audit_file (struct aa_profile*,int *,int ,int ,char const*,int *,struct aa_label*,int ,char const*,int) ;
 struct aa_profile* aa_find_child (struct aa_profile*,char const*) ;
 struct aa_profile* aa_get_profile (struct aa_profile*) ;
 struct aa_profile* aa_get_profile_rcu (int *) ;
 struct aa_profile* aa_new_null_profile (struct aa_profile*,int,char const*,int ) ;
 int aa_put_profile (struct aa_profile*) ;
 int nullperms ;

__attribute__((used)) static struct aa_label *build_change_hat(struct aa_profile *profile,
      const char *name, bool sibling)
{
 struct aa_profile *root, *hat = ((void*)0);
 const char *info = ((void*)0);
 int error = 0;

 if (sibling && PROFILE_IS_HAT(profile)) {
  root = aa_get_profile_rcu(&profile->parent);
 } else if (!sibling && !PROFILE_IS_HAT(profile)) {
  root = aa_get_profile(profile);
 } else {
  info = "conflicting target types";
  error = -EPERM;
  goto audit;
 }

 hat = aa_find_child(root, name);
 if (!hat) {
  error = -ENOENT;
  if (COMPLAIN_MODE(profile)) {
   hat = aa_new_null_profile(profile, 1, name,
        GFP_KERNEL);
   if (!hat) {
    info = "failed null profile create";
    error = -ENOMEM;
   }
  }
 }
 aa_put_profile(root);

audit:
 aa_audit_file(profile, &nullperms, OP_CHANGE_HAT, AA_MAY_CHANGEHAT,
        name, hat ? hat->base.hname : ((void*)0),
        hat ? &hat->label : ((void*)0), GLOBAL_ROOT_UID, info,
        error);
 if (!hat || (error && error != -ENOENT))
  return ERR_PTR(error);



 return &hat->label;
}
