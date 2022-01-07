
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_cond {int dummy; } ;
struct linux_binprm {int filename; } ;
struct aa_profile {int label; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int AA_MAY_ONEXEC ;
 int ENOMEM ;
 struct aa_label* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int GLOBAL_ROOT_UID ;
 int OP_CHANGE_ONEXEC ;
 int aa_audit_file (struct aa_profile*,int *,int ,int ,int ,int *,struct aa_label*,int ,char*,int ) ;
 int aa_get_newest_label (struct aa_label*) ;
 int aa_label_merge (int *,struct aa_label*,int ) ;
 int fn_for_each_in_ns (struct aa_label*,struct aa_profile*,int ) ;
 struct aa_label* fn_label_build_in_ns (struct aa_label*,struct aa_profile*,int ,int ,int ) ;
 int nullperms ;
 int profile_onexec (struct aa_profile*,struct aa_label*,int,struct linux_binprm const*,char*,struct path_cond*,int*) ;
 int profile_transition (struct aa_profile*,struct linux_binprm const*,char*,struct path_cond*,int*) ;

__attribute__((used)) static struct aa_label *handle_onexec(struct aa_label *label,
          struct aa_label *onexec, bool stack,
          const struct linux_binprm *bprm,
          char *buffer, struct path_cond *cond,
          bool *unsafe)
{
 struct aa_profile *profile;
 struct aa_label *new;
 int error;

 AA_BUG(!label);
 AA_BUG(!onexec);
 AA_BUG(!bprm);
 AA_BUG(!buffer);

 if (!stack) {
  error = fn_for_each_in_ns(label, profile,
    profile_onexec(profile, onexec, stack,
            bprm, buffer, cond, unsafe));
  if (error)
   return ERR_PTR(error);
  new = fn_label_build_in_ns(label, profile, GFP_ATOMIC,
    aa_get_newest_label(onexec),
    profile_transition(profile, bprm, buffer,
         cond, unsafe));

 } else {

  error = fn_for_each_in_ns(label, profile,
    profile_onexec(profile, onexec, stack, bprm,
            buffer, cond, unsafe));
  if (error)
   return ERR_PTR(error);
  new = fn_label_build_in_ns(label, profile, GFP_ATOMIC,
    aa_label_merge(&profile->label, onexec,
            GFP_ATOMIC),
    profile_transition(profile, bprm, buffer,
         cond, unsafe));
 }

 if (new)
  return new;


 error = fn_for_each_in_ns(label, profile,
   aa_audit_file(profile, &nullperms, OP_CHANGE_ONEXEC,
          AA_MAY_ONEXEC, bprm->filename, ((void*)0),
          onexec, GLOBAL_ROOT_UID,
          "failed to build target label", -ENOMEM));
 return ERR_PTR(error);
}
