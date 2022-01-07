
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path_cond {int dummy; } ;
struct path {int dummy; } ;
struct aa_profile {int path_flags; int label; } ;
struct aa_perms {int dummy; } ;


 int __aa_path_perm (char const*,struct aa_profile*,char const*,int ,struct path_cond*,int,struct aa_perms*) ;
 int path_name (char const*,int *,struct path const*,int,char*,char const**,struct path_cond*,int ) ;
 scalar_t__ profile_unconfined (struct aa_profile*) ;

__attribute__((used)) static int profile_path_perm(const char *op, struct aa_profile *profile,
        const struct path *path, char *buffer, u32 request,
        struct path_cond *cond, int flags,
        struct aa_perms *perms)
{
 const char *name;
 int error;

 if (profile_unconfined(profile))
  return 0;

 error = path_name(op, &profile->label, path,
     flags | profile->path_flags, buffer, &name, cond,
     request);
 if (error)
  return error;
 return __aa_path_perm(op, profile, name, request, cond, flags,
         perms);
}
