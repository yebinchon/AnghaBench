
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path_cond {int member_1; int member_0; } ;
struct linux_binprm {int unsafe; int secureexec; int file; int filename; int cred; int per_clear; scalar_t__ called_set_creds; } ;
struct aa_task_ctx {scalar_t__ nnp; int token; scalar_t__ onexec; } ;
struct aa_profile {int dummy; } ;
struct aa_label {scalar_t__ proxy; } ;
struct TYPE_2__ {int i_uid; int i_mode; } ;


 int AA_BUG (int) ;
 scalar_t__ DEBUG_ON ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct aa_label*) ;
 int LSM_UNSAFE_NO_NEW_PRIVS ;
 int LSM_UNSAFE_PTRACE ;
 int LSM_UNSAFE_SHARE ;
 int MAY_EXEC ;
 int OP_EXEC ;
 int PER_CLEAR_ON_SETID ;
 int PTR_ERR (struct aa_label*) ;
 int aa_audit_file (struct aa_profile*,int *,int ,int ,int ,int *,struct aa_label*,int ,char const*,int) ;
 scalar_t__ aa_get_label (struct aa_label*) ;
 struct aa_label* aa_get_newest_label (struct aa_label*) ;
 int aa_label_is_subset (struct aa_label*,scalar_t__) ;
 int aa_label_printk (struct aa_label*,int ) ;
 int aa_put_label (struct aa_label*) ;
 struct aa_label* cred_label (int ) ;
 int current ;
 int dbg_printk (char*,...) ;
 TYPE_1__* file_inode (int ) ;
 int fn_for_each (struct aa_label*,struct aa_profile*,int ) ;
 struct aa_label* fn_label_build (struct aa_label*,struct aa_profile*,int ,int ) ;
 int get_buffers (char*) ;
 struct aa_label* handle_onexec (struct aa_label*,scalar_t__,int ,struct linux_binprm*,char*,struct path_cond*,int*) ;
 int may_change_ptraced_domain (struct aa_label*,char const**) ;
 int nullperms ;
 int profile_transition (struct aa_profile*,struct linux_binprm*,char*,struct path_cond*,int*) ;
 int put_buffers (char*) ;
 int set_cred_label (int ,struct aa_label*) ;
 struct aa_task_ctx* task_ctx (int ) ;
 int unconfined (struct aa_label*) ;

int apparmor_bprm_set_creds(struct linux_binprm *bprm)
{
 struct aa_task_ctx *ctx;
 struct aa_label *label, *new = ((void*)0);
 struct aa_profile *profile;
 char *buffer = ((void*)0);
 const char *info = ((void*)0);
 int error = 0;
 bool unsafe = 0;
 struct path_cond cond = {
  file_inode(bprm->file)->i_uid,
  file_inode(bprm->file)->i_mode
 };

 if (bprm->called_set_creds)
  return 0;

 ctx = task_ctx(current);
 AA_BUG(!cred_label(bprm->cred));
 AA_BUG(!ctx);

 label = aa_get_newest_label(cred_label(bprm->cred));
 if ((bprm->unsafe & LSM_UNSAFE_NO_NEW_PRIVS) && !unconfined(label) &&
     !ctx->nnp)
  ctx->nnp = aa_get_label(label);


 get_buffers(buffer);

 if (ctx->onexec)
  new = handle_onexec(label, ctx->onexec, ctx->token,
        bprm, buffer, &cond, &unsafe);
 else
  new = fn_label_build(label, profile, GFP_ATOMIC,
    profile_transition(profile, bprm, buffer,
         &cond, &unsafe));

 AA_BUG(!new);
 if (IS_ERR(new)) {
  error = PTR_ERR(new);
  goto done;
 } else if (!new) {
  error = -ENOMEM;
  goto done;
 }
 if ((bprm->unsafe & LSM_UNSAFE_NO_NEW_PRIVS) &&
     !unconfined(label) && !aa_label_is_subset(new, ctx->nnp)) {
  error = -EPERM;
  info = "no new privs";
  goto audit;
 }

 if (bprm->unsafe & LSM_UNSAFE_SHARE) {

  ;
 }

 if (bprm->unsafe & (LSM_UNSAFE_PTRACE)) {

  error = may_change_ptraced_domain(new, &info);
  if (error)
   goto audit;
 }

 if (unsafe) {
  if (DEBUG_ON) {
   dbg_printk("scrubbing environment variables for %s "
       "label=", bprm->filename);
   aa_label_printk(new, GFP_ATOMIC);
   dbg_printk("\n");
  }
  bprm->secureexec = 1;
 }

 if (label->proxy != new->proxy) {

  if (DEBUG_ON) {
   dbg_printk("apparmor: clearing unsafe personality "
       "bits. %s label=", bprm->filename);
   aa_label_printk(new, GFP_ATOMIC);
   dbg_printk("\n");
  }
  bprm->per_clear |= PER_CLEAR_ON_SETID;
 }
 aa_put_label(cred_label(bprm->cred));

 set_cred_label(bprm->cred, new);

done:
 aa_put_label(label);
 put_buffers(buffer);

 return error;

audit:
 error = fn_for_each(label, profile,
   aa_audit_file(profile, &nullperms, OP_EXEC, MAY_EXEC,
          bprm->filename, ((void*)0), new,
          file_inode(bprm->file)->i_uid, info,
          error));
 aa_put_label(new);
 goto done;
}
