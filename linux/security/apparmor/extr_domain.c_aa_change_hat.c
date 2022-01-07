
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ nnp; int previous; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int kill; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int AA_CHANGE_TEST ;
 int AA_DEBUG (char*) ;
 int AA_MAY_CHANGEHAT ;
 int EACCES ;
 int EPERM ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct aa_label*) ;
 int OP_CHANGE_HAT ;
 int PTR_ERR (struct aa_label*) ;
 int aa_audit_file (struct aa_profile*,struct aa_perms*,int ,int ,int *,int *,struct aa_label*,int ,char const*,int) ;
 scalar_t__ aa_get_label (struct aa_label*) ;
 struct aa_label* aa_get_newest_cred_label (struct cred const*) ;
 struct aa_label* aa_get_newest_label (int ) ;
 int aa_label_is_subset (struct aa_label*,scalar_t__) ;
 int aa_put_label (struct aa_label*) ;
 int aa_restore_previous_label (int ) ;
 int aa_set_current_hat (struct aa_label*,int ) ;
 struct aa_label* change_hat (struct aa_label*,char const**,int,int) ;
 int current ;
 int fn_for_each_in_ns (struct aa_label*,struct aa_profile*,int ) ;
 struct cred* get_current_cred () ;
 int may_change_ptraced_domain (struct aa_label*,char const**) ;
 int put_cred (struct cred const*) ;
 struct aa_task_ctx* task_ctx (int ) ;
 scalar_t__ task_no_new_privs (int ) ;
 scalar_t__ unconfined (struct aa_label*) ;

int aa_change_hat(const char *hats[], int count, u64 token, int flags)
{
 const struct cred *cred;
 struct aa_task_ctx *ctx = task_ctx(current);
 struct aa_label *label, *previous, *new = ((void*)0), *target = ((void*)0);
 struct aa_profile *profile;
 struct aa_perms perms = {};
 const char *info = ((void*)0);
 int error = 0;


 cred = get_current_cred();
 label = aa_get_newest_cred_label(cred);
 previous = aa_get_newest_label(ctx->previous);
 if (task_no_new_privs(current) && !unconfined(label) && !ctx->nnp)
  ctx->nnp = aa_get_label(label);

 if (unconfined(label)) {
  info = "unconfined can not change_hat";
  error = -EPERM;
  goto fail;
 }

 if (count) {
  new = change_hat(label, hats, count, flags);
  AA_BUG(!new);
  if (IS_ERR(new)) {
   error = PTR_ERR(new);
   new = ((void*)0);

   goto out;
  }

  error = may_change_ptraced_domain(new, &info);
  if (error)
   goto fail;





  if (task_no_new_privs(current) && !unconfined(label) &&
      !aa_label_is_subset(new, ctx->nnp)) {

   AA_DEBUG("no_new_privs - change_hat denied");
   error = -EPERM;
   goto out;
  }

  if (flags & AA_CHANGE_TEST)
   goto out;

  target = new;
  error = aa_set_current_hat(new, token);
  if (error == -EACCES)

   goto kill;
 } else if (previous && !(flags & AA_CHANGE_TEST)) {




  if (task_no_new_privs(current) && !unconfined(label) &&
      !aa_label_is_subset(previous, ctx->nnp)) {

   AA_DEBUG("no_new_privs - change_hat denied");
   error = -EPERM;
   goto out;
  }




  target = previous;
  error = aa_restore_previous_label(token);
  if (error) {
   if (error == -EACCES)
    goto kill;
   goto fail;
  }
 }

out:
 aa_put_label(new);
 aa_put_label(previous);
 aa_put_label(label);
 put_cred(cred);

 return error;

kill:
 info = "failed token match";
 perms.kill = AA_MAY_CHANGEHAT;

fail:
 fn_for_each_in_ns(label, profile,
  aa_audit_file(profile, &perms, OP_CHANGE_HAT,
         AA_MAY_CHANGEHAT, ((void*)0), ((void*)0), target,
         GLOBAL_ROOT_UID, info, error));

 goto out;
}
