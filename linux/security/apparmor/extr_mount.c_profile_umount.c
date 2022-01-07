
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int dfa; int * start; } ;
struct aa_profile {TYPE_1__ policy; int disconnected; } ;
struct aa_perms {int allow; } ;


 int AA_BUG (int) ;
 size_t AA_CLASS_MOUNT ;
 int AA_MAY_UMOUNT ;
 int EACCES ;
 int OP_UMOUNT ;
 int PROFILE_MEDIATES (struct aa_profile*,size_t) ;
 unsigned int aa_dfa_match (int ,int ,char const*) ;
 int aa_path_name (struct path*,int ,char*,char const**,char const**,int ) ;
 int audit_mount (struct aa_profile*,int ,char const*,int *,int *,int *,int ,int *,int,struct aa_perms*,char const*,int) ;
 struct aa_perms compute_mnt_perms (int ,unsigned int) ;
 int path_flags (struct aa_profile*,struct path*) ;

__attribute__((used)) static int profile_umount(struct aa_profile *profile, struct path *path,
     char *buffer)
{
 struct aa_perms perms = { };
 const char *name = ((void*)0), *info = ((void*)0);
 unsigned int state;
 int error;

 AA_BUG(!profile);
 AA_BUG(!path);

 if (!PROFILE_MEDIATES(profile, AA_CLASS_MOUNT))
  return 0;

 error = aa_path_name(path, path_flags(profile, path), buffer, &name,
        &info, profile->disconnected);
 if (error)
  goto audit;

 state = aa_dfa_match(profile->policy.dfa,
        profile->policy.start[AA_CLASS_MOUNT],
        name);
 perms = compute_mnt_perms(profile->policy.dfa, state);
 if (AA_MAY_UMOUNT & ~perms.allow)
  error = -EACCES;

audit:
 return audit_mount(profile, OP_UMOUNT, name, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0),
      AA_MAY_UMOUNT, &perms, info, error);
}
