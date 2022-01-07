
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path_cond {int mode; } ;
struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;


 int PATH_DELEGATE_DELETED ;
 int PATH_IS_DIR ;
 scalar_t__ S_ISDIR (int ) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*) ;
 int profile_path_perm (char const*,struct aa_profile*,struct path const*,char*,int ,struct path_cond*,int,struct aa_perms*) ;
 int put_buffers (char*) ;

int aa_path_perm(const char *op, struct aa_label *label,
   const struct path *path, int flags, u32 request,
   struct path_cond *cond)
{
 struct aa_perms perms = {};
 struct aa_profile *profile;
 char *buffer = ((void*)0);
 int error;

 flags |= PATH_DELEGATE_DELETED | (S_ISDIR(cond->mode) ? PATH_IS_DIR :
        0);
 get_buffers(buffer);
 error = fn_for_each_confined(label, profile,
   profile_path_perm(op, profile, path, buffer, request,
       cond, flags, &perms));

 put_buffers(buffer);

 return error;
}
