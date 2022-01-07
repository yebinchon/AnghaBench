
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {unsigned int* start; int dfa; } ;
struct aa_profile {int label; TYPE_1__ policy; int disconnected; } ;
struct aa_perms {int allow; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 size_t AA_CLASS_MOUNT ;
 int AA_MAY_PIVOTROOT ;
 int EACCES ;
 struct aa_label* ERR_PTR (int) ;
 int OP_PIVOTROOT ;
 int PROFILE_MEDIATES (struct aa_profile*,size_t) ;
 unsigned int aa_dfa_match (int ,unsigned int,char const*) ;
 unsigned int aa_dfa_null_transition (int ,unsigned int) ;
 struct aa_label* aa_get_newest_label (int *) ;
 int aa_path_name (struct path const*,int ,char*,char const**,char const**,int ) ;
 int audit_mount (struct aa_profile*,int ,char const*,char const*,int *,char const*,int ,int *,int,struct aa_perms*,char const*,int) ;
 struct aa_perms compute_mnt_perms (int ,unsigned int) ;
 int path_flags (struct aa_profile*,struct path const*) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static struct aa_label *build_pivotroot(struct aa_profile *profile,
     const struct path *new_path,
     char *new_buffer,
     const struct path *old_path,
     char *old_buffer)
{
 const char *old_name, *new_name = ((void*)0), *info = ((void*)0);
 const char *trans_name = ((void*)0);
 struct aa_perms perms = { };
 unsigned int state;
 int error;

 AA_BUG(!profile);
 AA_BUG(!new_path);
 AA_BUG(!old_path);

 if (profile_unconfined(profile) ||
     !PROFILE_MEDIATES(profile, AA_CLASS_MOUNT))
  return aa_get_newest_label(&profile->label);

 error = aa_path_name(old_path, path_flags(profile, old_path),
        old_buffer, &old_name, &info,
        profile->disconnected);
 if (error)
  goto audit;
 error = aa_path_name(new_path, path_flags(profile, new_path),
        new_buffer, &new_name, &info,
        profile->disconnected);
 if (error)
  goto audit;

 error = -EACCES;
 state = aa_dfa_match(profile->policy.dfa,
        profile->policy.start[AA_CLASS_MOUNT],
        new_name);
 state = aa_dfa_null_transition(profile->policy.dfa, state);
 state = aa_dfa_match(profile->policy.dfa, state, old_name);
 perms = compute_mnt_perms(profile->policy.dfa, state);

 if (AA_MAY_PIVOTROOT & perms.allow)
  error = 0;

audit:
 error = audit_mount(profile, OP_PIVOTROOT, new_name, old_name,
       ((void*)0), trans_name, 0, ((void*)0), AA_MAY_PIVOTROOT,
       &perms, info, error);
 if (error)
  return ERR_PTR(error);

 return aa_get_newest_label(&profile->label);
}
