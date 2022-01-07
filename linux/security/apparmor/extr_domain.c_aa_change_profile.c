
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_task_ctx {scalar_t__ nnp; } ;
struct aa_label {int dummy; } ;
struct aa_profile {struct aa_label label; } ;
struct aa_perms {scalar_t__ allow; } ;


 int AA_CHANGE_ONEXEC ;
 int AA_CHANGE_STACK ;
 int AA_CHANGE_TEST ;
 int AA_DEBUG (char*) ;
 int AA_MAY_CHANGE_PROFILE ;
 int AA_MAY_ONEXEC ;
 int COMPLAIN_MODE (struct aa_profile*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct aa_label*) ;
 scalar_t__ IS_ERR_OR_NULL (struct aa_label*) ;
 char* OP_CHANGE_ONEXEC ;
 char* OP_CHANGE_PROFILE ;
 char* OP_STACK ;
 char* OP_STACK_ONEXEC ;
 int PTR_ERR (struct aa_label*) ;
 int aa_audit_file (struct aa_profile*,struct aa_perms*,char*,int ,char const*,int *,struct aa_label*,int ,char const*,int) ;
 struct aa_label* aa_get_current_label () ;
 scalar_t__ aa_get_label (struct aa_label*) ;
 int aa_label_is_subset (struct aa_label*,scalar_t__) ;
 struct aa_label* aa_label_merge (struct aa_label*,struct aa_label*,int ) ;
 struct aa_label* aa_label_parse (struct aa_label*,char const*,int ,int,int) ;
 struct aa_profile* aa_new_null_profile (struct aa_profile*,int,char const*,int ) ;
 int aa_put_label (struct aa_label*) ;
 int aa_replace_current_label (struct aa_label*) ;
 int aa_set_current_onexec (struct aa_label*,int) ;
 int change_profile_perms_wrapper (char*,char const*,struct aa_profile*,struct aa_label*,int,int ,struct aa_perms*) ;
 int current ;
 int fn_for_each_in_ns (struct aa_label*,struct aa_profile*,int ) ;
 struct aa_label* fn_label_build_in_ns (struct aa_label*,struct aa_profile*,int ,scalar_t__,scalar_t__) ;
 struct aa_profile* labels_profile (struct aa_label*) ;
 int may_change_ptraced_domain (struct aa_label*,char const**) ;
 struct aa_task_ctx* task_ctx (int ) ;
 scalar_t__ task_no_new_privs (int ) ;
 int unconfined (struct aa_label*) ;

int aa_change_profile(const char *fqname, int flags)
{
 struct aa_label *label, *new = ((void*)0), *target = ((void*)0);
 struct aa_profile *profile;
 struct aa_perms perms = {};
 const char *info = ((void*)0);
 const char *auditname = fqname;
 bool stack = flags & AA_CHANGE_STACK;
 struct aa_task_ctx *ctx = task_ctx(current);
 int error = 0;
 char *op;
 u32 request;

 label = aa_get_current_label();
 if (task_no_new_privs(current) && !unconfined(label) && !ctx->nnp)
  ctx->nnp = aa_get_label(label);

 if (!fqname || !*fqname) {
  AA_DEBUG("no profile name");
  return -EINVAL;
 }

 if (flags & AA_CHANGE_ONEXEC) {
  request = AA_MAY_ONEXEC;
  if (stack)
   op = OP_STACK_ONEXEC;
  else
   op = OP_CHANGE_ONEXEC;
 } else {
  request = AA_MAY_CHANGE_PROFILE;
  if (stack)
   op = OP_STACK;
  else
   op = OP_CHANGE_PROFILE;
 }

 label = aa_get_current_label();

 if (*fqname == '&') {
  stack = 1;

  fqname++;
 }
 target = aa_label_parse(label, fqname, GFP_KERNEL, 1, 0);
 if (IS_ERR(target)) {
  struct aa_profile *tprofile;

  info = "label not found";
  error = PTR_ERR(target);
  target = ((void*)0);




  if ((flags & AA_CHANGE_TEST) ||
      !COMPLAIN_MODE(labels_profile(label)))
   goto audit;

  tprofile = aa_new_null_profile(labels_profile(label), 0,
            fqname, GFP_KERNEL);
  if (!tprofile) {
   info = "failed null profile create";
   error = -ENOMEM;
   goto audit;
  }
  target = &tprofile->label;
  goto check;
 }
 error = fn_for_each_in_ns(label, profile,
   change_profile_perms_wrapper(op, auditname,
           profile, target, stack,
           request, &perms));
 if (error)

  goto out;



check:

 error = may_change_ptraced_domain(target, &info);
 if (error && !fn_for_each_in_ns(label, profile,
     COMPLAIN_MODE(profile)))
  goto audit;
 if (flags & AA_CHANGE_TEST)
  goto out;


 if (!stack) {
  new = fn_label_build_in_ns(label, profile, GFP_KERNEL,
        aa_get_label(target),
        aa_get_label(&profile->label));




  if (task_no_new_privs(current) && !unconfined(label) &&
      !aa_label_is_subset(new, ctx->nnp)) {

   AA_DEBUG("no_new_privs - change_hat denied");
   error = -EPERM;
   goto out;
  }
 }

 if (!(flags & AA_CHANGE_ONEXEC)) {

  if (stack)
   new = aa_label_merge(label, target, GFP_KERNEL);
  if (IS_ERR_OR_NULL(new)) {
   info = "failed to build target label";
   if (!new)
    error = -ENOMEM;
   else
    error = PTR_ERR(new);
   new = ((void*)0);
   perms.allow = 0;
   goto audit;
  }
  error = aa_replace_current_label(new);
 } else {
  if (new) {
   aa_put_label(new);
   new = ((void*)0);
  }


  error = aa_set_current_onexec(target, stack);
 }

audit:
 error = fn_for_each_in_ns(label, profile,
   aa_audit_file(profile, &perms, op, request, auditname,
          ((void*)0), new ? new : target,
          GLOBAL_ROOT_UID, info, error));

out:
 aa_put_label(new);
 aa_put_label(target);
 aa_put_label(label);

 return error;
}
