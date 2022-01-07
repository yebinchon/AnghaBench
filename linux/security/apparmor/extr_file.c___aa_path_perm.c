
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path_cond {int uid; } ;
struct TYPE_2__ {int start; int dfa; } ;
struct aa_profile {TYPE_1__ file; } ;
struct aa_perms {int allow; } ;


 int EACCES ;
 int aa_audit_file (struct aa_profile*,struct aa_perms*,char const*,int,char const*,int *,int *,int ,int *,int) ;
 int aa_str_perms (int ,int ,char const*,struct path_cond*,struct aa_perms*) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

int __aa_path_perm(const char *op, struct aa_profile *profile, const char *name,
     u32 request, struct path_cond *cond, int flags,
     struct aa_perms *perms)
{
 int e = 0;

 if (profile_unconfined(profile))
  return 0;
 aa_str_perms(profile->file.dfa, profile->file.start, name, cond, perms);
 if (request & ~perms->allow)
  e = -EACCES;
 return aa_audit_file(profile, perms, op, request, name, ((void*)0), ((void*)0),
        cond->uid, ((void*)0), e);
}
