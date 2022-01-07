
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int start; } ;
struct aa_profile {TYPE_1__ file; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;


 int GLOBAL_ROOT_UID ;
 int aa_audit_file (struct aa_profile*,struct aa_perms*,char const*,int ,char const*,int *,struct aa_label*,int ,char const*,int) ;
 int change_profile_perms (struct aa_profile*,struct aa_label*,int,int ,int ,struct aa_perms*) ;

__attribute__((used)) static int change_profile_perms_wrapper(const char *op, const char *name,
     struct aa_profile *profile,
     struct aa_label *target, bool stack,
     u32 request, struct aa_perms *perms)
{
 const char *info = ((void*)0);
 int error = 0;

 if (!error)
  error = change_profile_perms(profile, target, stack, request,
          profile->file.start, perms);
 if (error)
  error = aa_audit_file(profile, perms, op, request, name,
          ((void*)0), target, GLOBAL_ROOT_UID, info,
          error);

 return error;
}
