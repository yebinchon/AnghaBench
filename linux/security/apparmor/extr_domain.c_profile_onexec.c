
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path_cond {int uid; } ;
struct linux_binprm {char* filename; TYPE_1__* file; } ;
struct TYPE_6__ {unsigned int start; int dfa; } ;
struct TYPE_5__ {int flags; } ;
struct aa_profile {TYPE_3__ file; TYPE_2__ label; int disconnected; int path_flags; } ;
struct aa_perms {int allow; int xindex; } ;
struct aa_label {int dummy; } ;
struct TYPE_4__ {int f_path; } ;


 int AA_BUG (int) ;
 int AA_DEBUG (char*) ;
 int AA_MAY_ONEXEC ;
 int AA_X_UNSAFE ;
 scalar_t__ DEBUG_ON ;
 int EACCES ;
 int FLAG_IX_ON_NAME_ERROR ;
 int GFP_ATOMIC ;
 int OP_EXEC ;
 int aa_audit_file (struct aa_profile*,struct aa_perms*,int ,int,char const*,int *,struct aa_label*,int ,char const*,int) ;
 unsigned int aa_dfa_null_transition (int ,unsigned int) ;
 int aa_label_printk (struct aa_label*,int ) ;
 int aa_path_name (int *,int ,char*,char const**,char const**,int ) ;
 unsigned int aa_str_perms (int ,unsigned int,char const*,struct path_cond*,struct aa_perms*) ;
 int change_profile_perms (struct aa_profile*,struct aa_label*,int,int,unsigned int,struct aa_perms*) ;
 int dbg_printk (char*,...) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static int profile_onexec(struct aa_profile *profile, struct aa_label *onexec,
     bool stack, const struct linux_binprm *bprm,
     char *buffer, struct path_cond *cond,
     bool *secure_exec)
{
 unsigned int state = profile->file.start;
 struct aa_perms perms = {};
 const char *xname = ((void*)0), *info = "change_profile onexec";
 int error = -EACCES;

 AA_BUG(!profile);
 AA_BUG(!onexec);
 AA_BUG(!bprm);
 AA_BUG(!buffer);

 if (profile_unconfined(profile)) {






  return 0;
 }

 error = aa_path_name(&bprm->file->f_path, profile->path_flags, buffer,
        &xname, &info, profile->disconnected);
 if (error) {
  if (profile_unconfined(profile) ||
      (profile->label.flags & FLAG_IX_ON_NAME_ERROR)) {
   AA_DEBUG("name lookup ix on error");
   error = 0;
  }
  xname = bprm->filename;
  goto audit;
 }


 state = aa_str_perms(profile->file.dfa, state, xname, cond, &perms);
 if (!(perms.allow & AA_MAY_ONEXEC)) {
  info = "no change_onexec valid for executable";
  goto audit;
 }




 state = aa_dfa_null_transition(profile->file.dfa, state);
 error = change_profile_perms(profile, onexec, stack, AA_MAY_ONEXEC,
         state, &perms);
 if (error) {
  perms.allow &= ~AA_MAY_ONEXEC;
  goto audit;
 }

 if (!(perms.xindex & AA_X_UNSAFE)) {
  if (DEBUG_ON) {
   dbg_printk("apparmor: scrubbing environment "
       "variables for %s label=", xname);
   aa_label_printk(onexec, GFP_ATOMIC);
   dbg_printk("\n");
  }
  *secure_exec = 1;
 }

audit:
 return aa_audit_file(profile, &perms, OP_EXEC, AA_MAY_ONEXEC, xname,
        ((void*)0), onexec, cond->uid, info, error);
}
